def do_punishment(first_part, second_part, nb_lines):
    rs = ""
    for i in range(nb_lines):
        rs += str.strip(first_part) + " " + str.strip(second_part) + ".\n"
    return rs