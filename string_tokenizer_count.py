import re
def tokenizer_counter(str_):
    pattern = r"[^A-Za-z0-9]+"
    replaced = re.sub(pattern, " ", str_)
    arr = replaced.split(" ")
    rs = {}
    for v in arr:
        if v != '':
            if v in rs:
                rs[v] += 1
            else:
                rs[v] = 1
    return rs

# print(tokenizer_counter("This is a test sentence, with various words and 123 numbers!"))