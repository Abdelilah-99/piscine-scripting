import sys

if len(sys.argv) - 1 != 1:
    print("Error: wrong number of arguments")
    exit(1)
i = 0
arr = []
while i < int(sys.argv[1]):
    print("Add a new candidate:")
    name = input("name: ")
    age = int(input("age: "))
    if (age < 18):
        arr.append(name + " " + "is not eligible (underaged)")
    elif (age > 60):
        arr.append(name + " " + "is not eligible (over the legal age)")
    else:
        arr.append(name + " " + "is eligible")
    i+=1
for v in arr:
    print(v)
