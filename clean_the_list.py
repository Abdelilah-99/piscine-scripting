def clean_list(shopping_list):
    list = []
    i = 1
    f = 0
    if (shopping_list == []):
        return []
    for item in shopping_list:
        list.append(str(i) + "/ " + str.strip(item).capitalize())
        i+=1
        if (item == 'milk'):
            f = 1
    if f == 0:
        list.append(str(i) + "/ " + 'Milk')
    return list
print(clean_list(['test', 'test123']))