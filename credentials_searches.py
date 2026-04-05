import json

def credentials_search():
    try:
        file = open("logs.json", "r", encoding="utf-8")
        data = json.load(file)
        file.close()
    except:
        return 
    
    result = {}
    def search_dict(d):
        for k, v in d.items():
            if k == "password" or k == "secret":
                result[k] = v
            elif isinstance(v, dict):
                search_dict(v)

    if isinstance(data, dict):
        search_dict(data)
    elif isinstance(data, list):
        for item in data:
            if isinstance(item, dict):
                search_dict(item)

    if result:
        out_file = open("credentials.json", "w", encoding="utf-8")
        json.dump(result, out_file)
        out_file.close()