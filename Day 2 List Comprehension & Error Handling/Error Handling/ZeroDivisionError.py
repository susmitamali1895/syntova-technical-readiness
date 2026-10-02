# Handling ZeroDivisionError
# ZeroDivisionError occurs when a number is divided by zero.


try:
    number1 = int(input("Enter first number: "))
    number2 = int(input("Enter second number: "))

    result = number1 / number2

    print("Result:", result)

except ZeroDivisionError:
    print("Cannot divide by zero")

# PRACTICAL EXAMPLE
# Calculate average marks

try:
    total_marks = int(input("Enter total marks: "))
    number_of_subjects = int(input("Enter number of subjects: "))

    average = total_marks / number_of_subjects

    print("Average Marks:", average)

except ZeroDivisionError:
    print("Number of subjects cannot be zero")

except ValueError:
    print("Please enter valid numbers")