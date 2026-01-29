import re

def tokenizer_counter(str_):
    pattern = r"[^A-Za-z0-9]+"
    replaced = re.sub(pattern, " ", str_)
    arr = replaced.split(" ")
    rs = {}

    for v in arr:
        if v != '':
            v = v.lower()
            if v in rs:
                rs[v] += 1
            else:
                rs[v] = 1

    return rs
