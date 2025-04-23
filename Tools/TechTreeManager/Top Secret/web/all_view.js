const canvas = document.getElementById('canvas');
const ctx = canvas.getContext('2d');

let techs = [];
let dragging = null;
let offsetX = 0;
let offsetY = 0;

document.getElementById('file-input').addEventListener('change', handleFiles);
document.getElementById('export').addEventListener('click', exportYML);

function handleFiles(e) {
  const files = e.target.files;
  techs = [];

  for (const file of files) {
    const reader = new FileReader();
    reader.onload = function(evt) {
      const doc = jsyaml.load(evt.target.result);
      if (Array.isArray(doc)) {
        const filtered = doc.filter(t => t.type === 'technology' && t.position);
        techs.push(...filtered);
        draw();
      }
    };
    reader.readAsText(file);
  }
}

function draw() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  for (const tech of techs) {
    const [x, y] = tech.position.split(',').map(Number);
    tech._x = x * 100 + canvas.width / 2;
    tech._y = y * 100 + canvas.height / 2;
  }

  for (const tech of techs) {
    if (tech.technologyPrerequisites) {
      for (const id of tech.technologyPrerequisites) {
        const target = techs.find(t => t.id === id);
        if (target) {
          ctx.beginPath();
          ctx.moveTo(tech._x + 50, tech._y + 25);
          ctx.lineTo(target._x + 50, target._y + 25);
          ctx.strokeStyle = '#aaa';
          ctx.stroke();
        }
      }
    }
  }

  for (const tech of techs) {
    ctx.fillStyle = '#fff';
    ctx.strokeStyle = '#000';
    ctx.fillRect(tech._x, tech._y, 100, 50);
    ctx.strokeRect(tech._x, tech._y, 100, 50);
    ctx.fillStyle = '#000';
    ctx.fillText(tech.id, tech._x + 5, tech._y + 20);
  }
}

canvas.addEventListener('mousedown', (e) => {
  const { x, y } = getMousePos(e);
  dragging = techs.find(t =>
    x >= t._x && x <= t._x + 100 &&
    y >= t._y && y <= t._y + 50
  );
  if (dragging) {
    offsetX = x - dragging._x;
    offsetY = y - dragging._y;
  }
});

canvas.addEventListener('mousemove', (e) => {
  if (!dragging) return;
  const { x, y } = getMousePos(e);
  dragging._x = x - offsetX;
  dragging._y = y - offsetY;

  const gridX = Math.round((dragging._x - canvas.width / 2) / 100);
  const gridY = Math.round((dragging._y - canvas.height / 2) / 100);
  dragging.position = `${gridX},${gridY}`;

  draw();
});

canvas.addEventListener('mouseup', () => {
  dragging = null;
});

function getMousePos(e) {
  const rect = canvas.getBoundingClientRect();
  return {
    x: e.clientX - rect.left,
    y: e.clientY - rect.top
  };
}

function exportYML() {
  const yaml = jsyaml.dump(techs, { lineWidth: -1 });
  const blob = new Blob([yaml], { type: "text/yaml" });
  const link = document.createElement("a");
  link.href = URL.createObjectURL(blob);
  link.download = "combined_tech.yml";
  link.click();
}
