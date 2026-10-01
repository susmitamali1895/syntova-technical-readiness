# Functions
# A function is a reusable block of code designed to perform a specific task.

# Simple Function
def greet():
    print("Hello, Susmita!")


# Calling the function
greet()


# Function with Parameter
def greet_user(name):
    print("Hello", name)


greet_user("Susmita")
greet_user("Snehal")


# Function with Multiple Parameters
def add_numbers(a, b):
    print("Addition:", a + b)


add_numbers(10, 20)


# Function with Return Value
def multiply(a, b):
    return a * b


result = multiply(5, 4)

print("Multiplication:", result)


# Default Parameter
def welcome(name="User"):
    print("Welcome", name)


welcome("Susmita")
welcome()


# Keyword Arguments
def student_details(name, age):
    print("Name:", name)
    print("Age:", age)


student_details(age=25, name="Susmita")