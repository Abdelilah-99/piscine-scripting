import re

def tokenize(sentence):
    pattern = r"[^A-Za-z0-9]+"
    replaced = re.sub(pattern, " ", sentence)
    arr = replaced.split(" ")
    return arr

# tokenize("abdelilah,bouchikhi test!!")