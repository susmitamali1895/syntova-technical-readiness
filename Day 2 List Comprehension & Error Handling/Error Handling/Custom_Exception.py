# Custom Exception
# We create our own exception class by inheriting from Exception.

class AgeError(Exception):
    pass


try:
    age = int(input("Enter your age: "))

    if age < 18:
        raise AgeError("Age must be 18 or above")

    print("You are eligible")

except AgeError as error:
    print("Error:", error)

# Practical Example
# Custom exception for invalid student marks.

class InvalidMarksError(Exception):
    pass


try:
    student_name = input("Enter student name: ")
    marks = int(input("Enter marks: "))

    if marks < 0 or marks > 100:
        raise InvalidMarksError("Marks must be between 0 and 100")

    print("Student:", student_name)
    print("Marks:", marks)

except ValueError:
    print("Please enter marks as a number")

except InvalidMarksError as error:
    print("Error:", error)