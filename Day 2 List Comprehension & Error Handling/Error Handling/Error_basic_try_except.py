# Basic Error Handling
# try contains code that may cause an error.
# except handles the error.

try:
    number = int(input("Enter a number: ")) # allows only integer number 
    print("You entered:", number)

except:
    print("Something went wrong")
