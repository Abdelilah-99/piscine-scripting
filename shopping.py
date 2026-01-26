def remember_the_apple(shopping_list):
    f = 0
    for el in shopping_list:
        if (el == 'apple'):
            f = 1
    if (f == 0):
        shopping_list.append('apple')
    return shopping_list