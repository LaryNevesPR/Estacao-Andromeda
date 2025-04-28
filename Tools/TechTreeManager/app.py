import os
import yaml
import tkinter as tk
from tkinter import ttk, messagebox

TARGET_FILES = {"arsenal.yml", "civilianservices.yml", "experimental.yml", "industrial.yml"}

class TechBrowser:
    def __init__(self, root):
        self.root = root
        self.root.title("Tech Grid Viewer")
        self.canvas = tk.Canvas(root, bg="white", width=800, height=600, scrollregion=(-500, -500, 500, 500))
        self.canvas.grid(row=0, column=1, sticky="nsew")

        self.scroll_x = tk.Scrollbar(root, orient="horizontal", command=self.canvas.xview)
        self.scroll_x.grid(row=1, column=1, sticky="ew")
        self.scroll_y = tk.Scrollbar(root, orient="vertical", command=self.canvas.yview)
        self.scroll_y.grid(row=0, column=2, sticky="ns")
        self.canvas.configure(xscrollcommand=self.scroll_x.set, yscrollcommand=self.scroll_y.set)

        self.tech_list = tk.Listbox(root, width=40)
        self.tech_list.grid(row=0, column=0, sticky="ns")

        self.grid_data = {}

        self.load_data()

    def load_data(self):
        start_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "Resources", "Prototypes"))
        direct_research = os.path.join(start_path, "Research")
        
        if os.path.isdir(direct_research):
            for file in os.listdir(direct_research):
                    if file in TARGET_FILES:
                        self.parse_file(os.path.join(direct_research, file))

        for folder in os.listdir(start_path):
            full_path = os.path.join(start_path, folder, "Research")
            if os.path.isdir(full_path):
                for file in os.listdir(full_path):
                    if file in TARGET_FILES:
                        self.parse_file(os.path.join(full_path, file))

        self.display_grid()

    def parse_file(self, file_path):
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)

                if not isinstance(data, list):
                    return

                for item in data:
                    if isinstance(item, dict) and item.get("type") == "technology":
                        pos = item.get("position", "0,0")
                        try:
                            x, y = map(int, pos.split(","))
                        except ValueError:
                            x, y = 0, 0

                        label = item.get("id", "Unknown")
                        self.grid_data[(x, y)] = label
                        self.tech_list.insert(tk.END, f"{label} ({x},{y})")

        except Exception as e:
            messagebox.showerror("Error", f"Failed to load {file_path}:\n{str(e)}")

    def display_grid(self):
        for (x, y), label in self.grid_data.items():
            screen_x = x * 100
            screen_y = y * 100
            self.canvas.create_rectangle(screen_x, screen_y, screen_x + 100, screen_y + 100, fill="lightblue")
            self.canvas.create_text(screen_x + 50, screen_y + 50, text=label, anchor="center")
    

if __name__ == "__main__":
    root = tk.Tk()
    root.rowconfigure(0, weight=1)
    root.columnconfigure(1, weight=1)
    app = TechBrowser(root)
    root.mainloop()
