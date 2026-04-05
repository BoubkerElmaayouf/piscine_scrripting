import json
def merge_two(first_dict):
    while True:
        print("Add a new entry:")
        k = input("key: ")
        if k == "exit":
            break
        v = int(input("value: "))
        first_dict[k] = v
    return json.dumps(first_dict)

