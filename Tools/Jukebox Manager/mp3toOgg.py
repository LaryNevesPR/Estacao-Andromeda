import os
import tkinter as tk
from tkinter import filedialog, messagebox, scrolledtext
from pydub import AudioSegment
from mutagen.mp3 import MP3
from mutagen.oggvorbis import OggVorbis
from mutagen.id3 import ID3

def select_mp3_files():
    """Open a file dialog to select multiple MP3 files."""
    file_paths = filedialog.askopenfilenames(
        title="Select MP3 Files",
        filetypes=[("MP3 Files", "*.mp3")]
    )
    return file_paths

def copy_metadata(mp3_file, ogg_file):
    """Copy metadata from MP3 to OGG file."""
    try:
        mp3_metadata = MP3(mp3_file, ID3=ID3)
        ogg_metadata = OggVorbis(ogg_file)

        for tag in mp3_metadata:
            if tag in ["TIT2", "TPE1", "TALB"]:  # Title, Artist, Album
                ogg_metadata[tag] = mp3_metadata[tag].text[0]

        ogg_metadata.save()
    except Exception as e:
        print(f"Failed to copy metadata: {e}")

def convert_mp3_to_ogg(mp3_file, log_text):
    """Convert an MP3 file to OGG format and save it in the same directory."""
    try:
        audio = AudioSegment.from_mp3(mp3_file)
        file_dir = os.path.dirname(mp3_file)
        output_dir = os.path.join(file_dir, "ogg")
        os.makedirs(output_dir, exist_ok=True)

        file_name = os.path.splitext(os.path.basename(mp3_file))[0] + ".ogg"
        output_path = os.path.join(output_dir, file_name)
        audio.export(output_path, format="ogg")

        copy_metadata(mp3_file, output_path)

        log_text.insert(tk.END, f"Converted: {file_name} -> {output_dir}\n")
        log_text.yview(tk.END)
    except Exception as e:
        log_text.insert(tk.END, f"Failed to convert {mp3_file}: {str(e)}\n")
        log_text.yview(tk.END)

def batch_convert(log_text):
    """Handle file selection and conversion process with a queue."""
    mp3_files = select_mp3_files()
    if not mp3_files:
        messagebox.showwarning("No Files Selected", "No MP3 files were selected.")
        return

    log_text.insert(tk.END, "Starting conversion...\n")
    log_text.yview(tk.END)

    for mp3_file in mp3_files:
        convert_mp3_to_ogg(mp3_file, log_text)

    log_text.insert(tk.END, "Conversion complete!\n")
    log_text.yview(tk.END)

# UI Setup
root = tk.Tk()
root.title("MP3 to OGG Converter")
root.geometry("500x300")

tk.Label(root, text="MP3 to OGG Converter", font=("Arial", 14)).pack(pady=10)

tk.Button(root, text="Select and Convert MP3 Files", command=lambda: batch_convert(log_text), font=("Arial", 12)).pack(pady=10)

log_text = scrolledtext.ScrolledText(root, width=60, height=10, font=("Arial", 10))
log_text.pack(pady=10)

tk.Button(root, text="Exit", command=root.quit, font=("Arial", 12)).pack(pady=5)

root.mainloop()
