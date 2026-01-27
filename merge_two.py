import json

def merge_two(first_dict):
    new_dic = first_dict
    while (1 == 1):
        print("Add a new entry:")
        # print("key: ", end="")
        key = input("key: ")
        if (key == "exit"):
            break
        # print("value: ", end="")
        value = int(input("value: "))
        new_dic = {**first_dict, **{key: value}}
    # print(json.dumps(new_dic))
    return new_dic

# merge_two({"Ahmed": 15})