# Inheritance
# Inheritance allows one class to use the properties and methods
# of another class.


# Parent class
class Student:
    # constructor
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def display_details(self):
        print("Name:", self.name)
        print("Age:", self.age)


# Child class
class DataScienceStudent(Student):

    def display_course(self):
        print("Course: Data Science")
        print("School: Syntova")


# Creating object
student1 = DataScienceStudent("Neeta", 25)

# Calling parent class method
student1.display_details()

# Calling child class method
student1.display_course()