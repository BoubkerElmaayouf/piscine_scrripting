import json

def get_recipes(filename):
    file = open(filename, "r", encoding = "utf-8")
    d = json.load(file)
    file.close()
    return d