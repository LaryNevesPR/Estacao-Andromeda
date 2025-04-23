import os
import yaml

TARGET_FILES = {"arsenal.yml", "civilianservices.yml", "experimental.yml", "industrial.yml"}
MODIFIED_FILES = {}

def load_updated_items(path):
    try:
        with open(path, "r", encoding="utf-8") as f:
            data = yaml.safe_load(f)
            if isinstance(data, list):
                cleaned = {}
                for entry in data:
                    if isinstance(entry, dict) and "id" in entry:
                        entry.pop("_x", None)
                        entry.pop("_y", None)
                        cleaned[entry["id"]] = entry
                return cleaned
    except Exception as e:
        print(f"Failed to load updated YML: {e}")
    return {}


def update_file(filepath, updates):
    updated = False
    try:
        with open(filepath, "r", encoding="utf-8") as f:
            original = yaml.safe_load(f)
    except Exception as e:
        print(f"Failed to read {filepath}: {e}")
        return False

    if not isinstance(original, list):
        return False

    new_list = []
    for entry in original:
        if isinstance(entry, dict) and "id" in entry and entry["id"] in updates:
            new_list.append(updates[entry["id"]])
            updated = True
        else:
            new_list.append(entry)

    if updated:
        try:
            with open(filepath, "w", encoding="utf-8") as f:
                yaml.dump(new_list, f, sort_keys=False, allow_unicode=True)
            MODIFIED_FILES[filepath] = True
        except Exception as e:
            print(f"Failed to write {filepath}: {e}")
    return updated

def update_all_files(updates):
    start_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "..", "Resources", "Prototypes"))
    direct_research = os.path.join(start_path, "Research")

    def process_dir(path):
        for file in os.listdir(path):
            if file in TARGET_FILES:
                full_path = os.path.join(path, file)
                update_file(full_path, updates)

    if os.path.isdir(direct_research):
        process_dir(direct_research)

    for folder in os.listdir(start_path):
        full_path = os.path.join(start_path, folder, "Research")
        if os.path.isdir(full_path):
            process_dir(full_path)

def write_log():
    log_path = os.path.join(os.path.dirname(__file__), "update_log.txt")
    try:
        with open(log_path, "w", encoding="utf-8") as f:
            if MODIFIED_FILES:
                f.write("Modified files:\n")
                for path in MODIFIED_FILES:
                    f.write(path + "\n")
            else:
                f.write("No matching IDs found to update.\n")
        print(f"Log written to {log_path}")
    except Exception as e:
        print(f"Failed to write log: {e}")

if __name__ == "__main__":
    input_path = input("Path to updated YML file: ").strip('"')
    if not os.path.isfile(input_path):
        print("Invalid file path.")
    else:
        updates = load_updated_items(input_path)
        if updates:
            update_all_files(updates)
            write_log()
        else:
            print("No valid technology entries found in the update file.")
