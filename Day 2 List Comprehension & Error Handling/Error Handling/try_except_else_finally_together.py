# try-except-else-finally
# All four blocks are used together.
# Basic 

try:
    number = int(input("Enter a number: "))

except ValueError:
    print("Please enter a valid number")

else:
    print("You entered:", number)

finally:
    print("Program execution completed")

# Practical Example
# Handling student marks using try-except-else-finally.

try:
    student_name = input("Enter student name: ")
    marks = int(input("Enter marks: "))

except ValueError:
    print("Please enter marks as a number")

else:
    print("Student:", student_name)
    print("Marks:", marks)

finally:
    print("Student marks process completed")