# try-except-finally
# finally always runs after try and except.

try:
    number = int(input("Enter a number: "))
    print("You entered:", number)

except ValueError:
    print("Please enter a valid number")

finally:
    print("Program execution completed")

# Practical Example 
# Using finally for file handling

file = None

try:
    file = open("student.txt", "r")
    data = file.read()

    print("File Data:")
    print(data)

except FileNotFoundError:
    print("File was not found")

finally:
    if file is not None:
        file.close()

    print("File operation completed")

# example 2
# Finally block
# finally always runs whether an error occurs or not.

try:
    number = int(input("Enter a number: "))
    print("Number:", number)

except ValueError:
    print("Please enter a valid number")

finally:
    print("Program execution completed")