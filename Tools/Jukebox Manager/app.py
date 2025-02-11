import os
import shutil
import yaml
import tkinter as tk
from tkinter import filedialog, messagebox
import subprocess

def load_yaml(file_path):
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            return yaml.safe_load(file) or []
    return []

def save_yaml(file_path, data):
    with open(file_path, 'w') as file:
        yaml.safe_dump(data, file)

def select_ogg_files():
    file_paths = filedialog.askopenfilenames(
        title="Select .ogg files",
        filetypes=[("OGG files", "*.ogg")]
    )
    return file_paths

def update_listbox():
    listbox.delete(0, tk.END)
    yaml_data = load_yaml(yaml_file_path)
    for item in yaml_data:
        listbox.insert(tk.END, f"{item['id']}: {item['name']}")

def update_attributions(file_name):
    attributions_path = "../../Resources/Audio/Jukebox/attributions.yml"

    default_attribution = {
        "files": [file_name],
        "license": "CC-BY-SA-3.0",
        "copyright": f"{file_name} by Unknown Artist. Exported in Mono OGG.",
        "source": "Unknown"
    }

    attributions_data = load_yaml(attributions_path)
    attributions_data.append(default_attribution)
    save_yaml(attributions_path, attributions_data)

def move_files_and_update_yaml():
    ogg_files = select_ogg_files()
    if not ogg_files:
        return

    for ogg_file in ogg_files:
        try:
            file_name = os.path.basename(ogg_file)
            dest_dir = os.path.abspath("../../Resources/Audio/Jukebox")
            dest_path = os.path.join(dest_dir, file_name)
            os.makedirs(dest_dir, exist_ok=True)
            shutil.copy(ogg_file, dest_path)

            item_id = file_name.rsplit(".", 1)[0].replace(" ", "_")
            item_name = file_name.replace("_", " ").rsplit(".", 1)[0]
            new_item = {
                "type": "jukebox",
                "id": item_id,
                "name": item_name,
                "path": {"path": f"/Audio/Jukebox/{file_name}"}
            }

            yaml_data = load_yaml(yaml_file_path)
            yaml_data.append(new_item)
            save_yaml(yaml_file_path, yaml_data)
            update_attributions(file_name)

        except Exception as e:
            messagebox.showerror("Error", f"Error processing {file_name}: {str(e)}")

    update_listbox()
    messagebox.showinfo("Success", "All files moved and YAML updated!")

def open_folder(path):
    abs_path = os.path.abspath(path)
    if os.path.exists(abs_path):
        subprocess.Popen(f'explorer "{abs_path}"')
    else:
        messagebox.showerror("Error", f"Folder not found: {abs_path}")

# Main application
root = tk.Tk()
root.title("Jukebox Manager")
root.geometry("400x500")

yaml_file_path = "../../Resources/Prototypes/Catalog/Jukebox/Standard.yml"
if not os.path.exists(yaml_file_path):
    messagebox.showerror("Error", f"YAML file not found at {yaml_file_path}")
    root.destroy()
else:
    tk.Label(root, text="Jukebox YAML Manager", font=("Arial", 16)).pack(pady=10)

    listbox_frame = tk.Frame(root)
    listbox_frame.pack(pady=10, fill=tk.BOTH, expand=True)

    scrollbar = tk.Scrollbar(listbox_frame)
    scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

    listbox = tk.Listbox(listbox_frame, font=("Arial", 12), yscrollcommand=scrollbar.set)
    listbox.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

    scrollbar.config(command=listbox.yview)
    update_listbox()

    tk.Button(root, text="Add OGG Files", command=move_files_and_update_yaml, font=("Arial", 12)).pack(pady=10)
    tk.Button(root, text="Open Catalog Folder", command=lambda: open_folder("../../Resources/Prototypes/Catalog/Jukebox"), font=("Arial", 12)).pack(pady=5)
    tk.Button(root, text="Open Audio Folder", command=lambda: open_folder("../../Resources/Audio/Jukebox"), font=("Arial", 12)).pack(pady=5)

    root.mainloop()
