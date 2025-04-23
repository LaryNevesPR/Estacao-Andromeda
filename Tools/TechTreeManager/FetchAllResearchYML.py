import os
import yaml

TARGET_FILES = {"arsenal.yml", "civilianservices.yml", "experimental.yml", "industrial.yml"}

def collect_ymls():
    result = {name: [] for name in TARGET_FILES}
    start_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "Resources", "Prototypes"))
    direct_research = os.path.join(start_path, "Research")

    def process_dir(path):
        for file in os.listdir(path):
            if file in TARGET_FILES:
                full_path = os.path.join(path, file)
                try:
                    with open(full_path, "r", encoding="utf-8") as f:
                        data = yaml.safe_load(f)
                        if isinstance(data, list):
                            result[file].extend(data)
                except Exception as e:
                    print(f"Failed to read {full_path}: {e}")

    # Check direct Research folder
    if os.path.isdir(direct_research):
        process_dir(direct_research)

    # Check each subfolder in Prototypes for Research
    for folder in os.listdir(start_path):
        full_path = os.path.join(start_path, folder, "Research")
        if os.path.isdir(full_path):
            process_dir(full_path)

    return result

def save_master_files(data_dict):
    output_dir = os.path.abspath(os.path.dirname(__file__))
    for file_name, entries in data_dict.items():
        if entries:
            base = os.path.splitext(file_name)[0].capitalize()
            output_file = f"Master{base}.yml"
            output_path = os.path.join(output_dir, output_file)
            try:
                with open(output_path, "w", encoding="utf-8") as f:
                    yaml.dump(entries, f, sort_keys=False, allow_unicode=True)
                print(f"Saved {output_file} with {len(entries)} entries.")
            except Exception as e:
                print(f"Failed to write {output_path}: {e}")

if __name__ == "__main__":
    data = collect_ymls()
    save_master_files(data)
