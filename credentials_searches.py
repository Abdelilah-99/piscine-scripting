import json
import os

def _search_keys(data, found):
    if isinstance(data, dict):
        for key, value in data.items():
            if key == "password" or key == "secret":
                found[key] = value
            _search_keys(value, found)
    elif isinstance(data, list):
        for item in data:
            _search_keys(item, found)

def credentials_search():
    if not os.path.isfile("logs.json"):
        return

    try:
        with open("logs.json", "r") as f:
            data = json.load(f)
    except (json.JSONDecodeError, OSError):
        return

    found = {}
    _search_keys(data, found)

    if not found:
        return

    with open("credentials.json", "w") as f:
        json.dump(found, f, indent=2)
