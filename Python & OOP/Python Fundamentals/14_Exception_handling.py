#Exception handling is a mechanism used to handle errors in a program without stopping its execution.

# Handling an error

try:
    number = int(input("Enter a number: "))
    print("You entered:", number)

except:
    print("Please enter a valid number")