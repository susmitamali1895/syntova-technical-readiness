# Conditional Statements
# Conditional statements are used to make decisions in a program.
# Python mainly uses if, elif, and else.

age = 25

# if - checks the first condition
if age < 18:
    print("You are a minor")

# elif - checks another condition if the previous condition is false
elif age >= 18 and age < 60:
    print("You are an adult")

# else - runs when all above conditions are false
else:
    print("You are a senior citizen")


# Comparison Operators
# >   Greater than
# <   Less than
# >=  Greater than or equal to
# <=  Less than or equal to
# ==  Equal to
# !=  Not equal to

marks = 75

if marks >= 40:
    print("Result: Pass")
else:
    print("Result: Fail")


# Checking multiple conditions

number = 10

if number > 0:
    print("Positive number")

elif number < 0:
    print("Negative number")

else:
    print("Zero")