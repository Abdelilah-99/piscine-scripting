def remember_the_apple(shopping_list):
    if (shopping_list == []):
        return []
    f = 0
    for el in shopping_list:
        if (el == 'apple'):
            f = 1
    if (f == 0):
        shopping_list.append('apple')
    return shopping_list
print(remember_the_apple([]))