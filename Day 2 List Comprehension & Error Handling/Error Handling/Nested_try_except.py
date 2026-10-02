# Nested try-except
# One try-except block is placed inside another try block.

try:
    number = int(input("Enter a number: "))

    try:
        result = 100 / number
        print("Result:", result)

    except ZeroDivisionError:
        print("Cannot divide by zero")

except ValueError:
    print("Please enter a valid number")

# Practical Example
# Nested try-except for accessing student marks.

students = {
    "Amruta": [85, 78, 92],
    "Ravina": [75, 88, 80]
}

try:
    name = input("Enter student name: ")

    try:
        index = int(input("Enter subject index (0-2): "))

        print("Student:", name)
        print("Marks:", students[name][index])

    except ValueError:
        print("Subject index must be a number")

    except IndexError:
        print("Invalid subject index. Enter 0, 1, or 2")

except KeyError:
    print("Student not found")