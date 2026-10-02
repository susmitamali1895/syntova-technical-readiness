# Handling ValueError
# ValueError occurs when a value has an invalid format.

try:
    number = int(input("Enter a number: "))
    print("You entered:", number)

except ValueError:
    print("Please enter a valid number")

# PRACTICAL EXAMPLE
# Calculate average marks from user input

try:
    marks1 = int(input("Enter marks for subject 1: "))
    marks2 = int(input("Enter marks for subject 2: "))
    marks3 = int(input("Enter marks for subject 3: "))

    average = (marks1 + marks2 + marks3) / 3

    print("Average Marks:", average)

except ValueError:
    print("Please enter marks as numbers")