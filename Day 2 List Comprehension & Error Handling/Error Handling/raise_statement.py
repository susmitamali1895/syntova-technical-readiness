# Using raise
# We can manually generate an exception using raise.

age = -5

if age < 0:
    raise ValueError("Age cannot be negative")

print("Age:", age)

# Using raise with try-except

try:
    age = int(input("Enter your age: "))

    if age < 0:
        raise ValueError("Age cannot be negative")

    print("Age:", age)

except ValueError as error:
    print("Error:", error)


# Practical Example
# Validate student marks using raise.

try:
    student_name = input("Enter student name: ")
    marks = int(input("Enter marks: "))

    if marks < 0 or marks > 100:
        raise ValueError("Marks must be between 0 and 100")

    print("Student:", student_name)
    print("Marks:", marks)

except ValueError as error:
    print("Error:", error)