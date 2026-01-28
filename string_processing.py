import re

def tokenize(sentence):
    pattern = r"[^A-Za-z0-9]+"
    replaced = re.sub(pattern, " ", sentence)
    arr = replaced.split(" ")
    rs = []
    for v in arr:
        if v != '':
            rs.append(v)
    return rs
# tokenize("abdelilah,bouchikhi test!!")