import datetime as dt
# to_do_list = [
#     (dt.date(2022, 6, 1), "fix the seat"),
#     (dt.date(2022, 6, 2), "take the trash"),
# ]
def to_do(tasks):
    task_str = ""
    for task in tasks:
        date = task[0]
        task_str += date.strftime("%A %d %B %Y") + " " + task[1] + "\n"
    with open("output.txt", "w") as o:
        return o.write(str.strip(task_str))
# print(to_do(to_do_list))