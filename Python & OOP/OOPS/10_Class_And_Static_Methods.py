# Class Method and Static Method
# A class method works with class variables.
# A static method is a method that does not depend on class or object data.


class Student:

    # Class variable
    school = "Syntova"

    def __init__(self, name):
        self.name = name

    # Class Method
    @classmethod
    def change_school(cls, new_school):
        cls.school = new_school

    # Static Method
    @staticmethod
    def welcome_message():
        print("Welcome to Syntova")


# Calling static method
Student.welcome_message()

# Calling class method
Student.change_school("Syntova Technologies")

# Creating object
student1 = Student("Pooja")

print("Student:", student1.name)
print("School:", Student.school)