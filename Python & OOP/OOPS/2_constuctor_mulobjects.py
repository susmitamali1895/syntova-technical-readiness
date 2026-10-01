# ----------------------------------------
# Program 2: Multiple Objects and Default Values
# ----------------------------------------

class Employee:

    # Constructor with default value
    def __init__(self, name, role="Data Scientist"):
        self.name = name
        self.role = role

    def display_details(self):
        print("Employee Name:", self.name)
        print("Role:", self.role)
        print("------------------------")


# Object 1 - using default role
employee1 = Employee("Susmita")

# Object 2 - providing role
employee2 = Employee("Snehal", "Python Developer")

# Display details
employee1.display_details()
employee2.display_details()