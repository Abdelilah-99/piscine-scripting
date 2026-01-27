days = {
    1: "Monday",
    2: "Tuesday",
    3: "Wednesday",
    4: "Thursday",
    5: "Friday",
    6: "Saturday",
    7: "Sunday"
}

def day_from_number(day_number):
    if (day_number < 1 or day_number > 7):
        return None
    return days[day_number]

def day_to_number(day):
    if day not in days.values():
        return None
    for number, name in days.items():
        if name.lower() == day.lower():
            return number

# print(day_from_number(8))
# print(day_to_number("Satsurday"))