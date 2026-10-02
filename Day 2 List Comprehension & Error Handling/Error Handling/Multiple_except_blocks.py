# Multiple except blocks
# Different errors can be handled using different except blocks.

try:
    number1 = int(input("Enter first number: "))
    number2 = int(input("Enter second number: "))

    result = number1 / number2

    print("Result:", result)

except ValueError:
    print("Please enter numbers only")

except ZeroDivisionError:
    print("Cannot divide by zero")

# Practical Example 
# Multiple except blocks
# Handling different errors in a student marks program.

students = {
    "Vikas": [85, 78, 92],
    "Ranjit": [75, 88, 80]
}

try:
    name = input("Enter student name: ")
    index = int(input("Enter subject index (0-2): "))

    marks = students[name][index]

    print("Student:", name)
    print("Marks:", marks)

except ValueError:
    print("Please enter a valid number for the subject index")

except KeyError:
    print("Student not found")

except IndexError:
    print("Invalid subject index. Please enter 0, 1, or 2")