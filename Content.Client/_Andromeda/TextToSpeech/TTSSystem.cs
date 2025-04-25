using System.Collections.Concurrent;
using System.IO;
using Robust.Client.Audio;
using Robust.Shared.Audio;
using Robust.Shared.Audio.Components;
using Robust.Shared.Audio.Systems;
using Robust.Shared.Configuration;
using Robust.Shared.ContentPack;
using Robust.Shared.Utility;
using Content.Shared.Andromeda.TextToSpeech;
using Content.Shared.Andromeda.CCVar;
using static Content.Shared.InteractionVerbs.InteractionPopupPrototype;
using Robust.Client.ResourceManagement;

namespace Content.Client.Andromeda.TTS;

/// <summary>
/// Plays TTS audio
/// </summary>
public sealed class TextToSpeechSystem : EntitySystem
{
    [Dependency] private readonly IConfigurationManager _cfg = default!;
    [Dependency] private readonly AudioSystem _audio = default!;
    [Dependency] private readonly SharedAudioSystem _sharedAudio = default!;
    [Dependency] private readonly IAudioManager _audioManager = default!;
    [Dependency] private readonly IResourceManager _res = default!;

    private readonly ConcurrentQueue<(byte[] file, SoundSpecifier? specifier)> _ttsQueue = [];
    private ISawmill _sawmill = default!;
    private readonly MemoryContentRoot _contentRoot = new();
    private static readonly ResPath Prefix = ResPath.Root;
    private (EntityUid Entity, AudioComponent Component)? _currentPlaying;

    /// Reducing the volume of the TTS when whispering. Will be converted to logarithm.
    private const float WhisperFade = 4f;

    /// The volume at which the TTS sound will not be heard.
    private const float MinimalVolume = -10f;

    private float _volume;
    private float _radioVolume;
    private float _volumeAnnounce;
    private bool _ttsQueueEnabled;
    private int _fileIdx = 0;

    public override void Initialize()
    {
        _sawmill = Logger.GetSawmill("tts");
        _cfg.OnValueChanged(AndromedaCCVars.TTSVolume, OnTtsVolumeChanged, true);
        _cfg.OnValueChanged(AndromedaCCVars.TTSAnnounceVolume, OnTtsAnnounceVolumeChanged, true);
        _cfg.OnValueChanged(AndromedaCCVars.TTSRadioVolume, OnTtsRadioVolumeChanged, true);
        _cfg.OnValueChanged(AndromedaCCVars.TTSRadioQueueEnabled, OnTtsRadioQueueChanged, true);
        _cfg.OnValueChanged(AndromedaCCVars.TTSClientEnabled, OnTtsClientOptionChanged, true);
        SubscribeNetworkEvent<PlayTTSEvent>(OnPlayTTS);
        SubscribeNetworkEvent<AnnounceTtsEvent>(OnAnnounceTTSPlay);
        _res.AddRoot(Prefix, _contentRoot);
    }

    public override void Shutdown()
    {
        base.Shutdown();
        _cfg.UnsubValueChanged(AndromedaCCVars.TTSVolume, OnTtsVolumeChanged);
        _cfg.UnsubValueChanged(AndromedaCCVars.TTSAnnounceVolume, OnTtsAnnounceVolumeChanged);
        _cfg.UnsubValueChanged(AndromedaCCVars.TTSRadioVolume, OnTtsRadioVolumeChanged);
        _cfg.UnsubValueChanged(AndromedaCCVars.TTSRadioQueueEnabled, OnTtsRadioQueueChanged);
        _cfg.UnsubValueChanged(AndromedaCCVars.TTSClientEnabled, OnTtsClientOptionChanged);
        _contentRoot.Dispose();
    }

    public void RequestPreviewTts(string voiceId)
        => RaiseNetworkEvent(new PreviewTTSRequestEvent() { VoiceId = voiceId });

    private void OnTtsVolumeChanged(float volume)
        => _volume = volume;

    private void OnTtsRadioVolumeChanged(float volume)
        => _radioVolume = volume;

    private void OnTtsRadioQueueChanged(bool enabled)
        => _ttsQueueEnabled = enabled;

    private void OnTtsAnnounceVolumeChanged(float volume)
        => _volumeAnnounce = volume;

    private void OnTtsClientOptionChanged(bool option)
        => RaiseNetworkEvent(new ClientOptionTTSEvent { Enabled = option });

    private void OnAnnounceTTSPlay(AnnounceTtsEvent ev)
        => _ttsQueue.Enqueue((ev.Data, ev.AnnouncementSound));

    private void PlayQueue()
    {
        if (!_ttsQueue.TryDequeue(out var entry))
            return;

        var volume = SharedAudioSystem.GainToVolume(_volumeAnnounce);
        var finalParams = AudioParams.Default.WithVolume(volume);

        if (entry.specifier != null)
            _currentPlaying = _audio.PlayGlobal(_sharedAudio.GetSound(entry.specifier), new EntityUid(), finalParams.AddVolume(-5f));
        _currentPlaying = PlayTTSBytes(entry.file, null, finalParams, true);
    }

    private void OnPlayTTS(PlayTTSEvent ev)
    {
        _sawmill.Verbose($"Playing TTS audio {ev.Data.Length} bytes from {ev.SourceUid} entity");

        var filePath = new ResPath($"{_fileIdx++}.wav");
        _contentRoot.AddOrUpdateFile(filePath, ev.Data);

        var audioResource = new AudioResource();
        audioResource.Load(IoCManager.Instance!, Prefix / filePath);

        var audioParams = AudioParams.Default;

        if (ev.SourceUid != null)
            _audio.PlayEntity(audioResource.AudioStream, GetEntity(ev.SourceUid.Value), audioParams);
        else
            _audio.PlayGlobal(audioResource.AudioStream, audioParams);

        _contentRoot.RemoveFile(filePath);
    }

    private (EntityUid Entity, AudioComponent Component)? PlayTTSBytes(byte[] data, EntityUid? sourceUid = null, AudioParams? audioParams = null, bool globally = false)
    {
        if (data.Length < 50 || (sourceUid != null && sourceUid.Value.Id == 0 && !globally))
            return null;


        var @params = audioParams ?? AudioParams.Default;
        using var stream = new MemoryStream(data);
        var audioStream = _audioManager.LoadAudioOggVorbis(stream);

        try
        {
            _sawmill.Debug($"Play TTS audio {data.Length} bytes");
            var filePath = new ResPath($"{_fileIdx++}.wav");
            _contentRoot.AddOrUpdateFile(filePath, data);

            var audioResource = new AudioResource();
            audioResource.Load(IoCManager.Instance!, Prefix / filePath);

            //if (globally)
            //{
            //    _sawmill.Debug("Trying to play audio globally.");
            //    return _audio.PlayGlobal(audioStream);
            //}

            if (sourceUid != null)
            {
                _sawmill.Debug($"Trying to play audio on entity: {sourceUid.Value}");
                //_audio.PlayEntity(audioResource.AudioStream, sourceUid.Value, audioParams);
            }

            _sawmill.Debug("Trying to play audio globally as fallback.");
            return null; //_audio.PlayGlobal(audioStream);
        }
        catch (Exception e)
        {
            _sawmill.Error($"Erro ao tentar tocar TTS: {e}");
            return null;
        }
    }


    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        if (_currentPlaying.HasValue)
        {
            var (entity, _) = _currentPlaying.Value;

            if (Deleted(entity))
                _currentPlaying = null;
            else
                return;
        }

        PlayQueue();
    }
    private float AdjustVolume(bool isWhisper)
    {
        var volume = MinimalVolume + SharedAudioSystem.GainToVolume(_volume);

        if (isWhisper)
            volume -= SharedAudioSystem.GainToVolume(WhisperFade);

        return volume;
    }

    private float AdjustDistance(bool isWhisper)
    {
        return isWhisper ? 5 : 10;
    }
}
