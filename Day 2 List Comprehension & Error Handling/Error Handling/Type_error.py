# TypeError
# TypeError occurs when incompatible data types are used together.


# BASIC EXAMPLE

try:
    number = 10
    text = "5"

    result = number + text

    print("Result:", result)

except TypeError:
    print("Cannot add an integer and a string")


# PRACTICAL EXAMPLE

def calculate_salary(salary, bonus):
    return salary + bonus


try:
    employee_name = "Samruddhi"
    salary = 50000
    bonus = "5000"

    total_salary = calculate_salary(salary, bonus)

    print("Employee:", employee_name)
    print("Total Salary:", total_salary)

except TypeError:
    print("Salary and bonus must be numbers")