# try-except-else
# else runs when no error occurs in try block.

try:
    number = int(input("Enter a number: "))

except ValueError:
    print("Please enter a valid number")

else:
    print("You entered:", number)


# Practical Example 
# Using else with student marks

try:
    marks = int(input("Enter your marks: "))

    if marks < 0 or marks > 100:
        raise ValueError

except ValueError:
    print("Please enter marks between 0 and 100")

else:
    print("Marks entered successfully:", marks)