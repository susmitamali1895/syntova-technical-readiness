# Method Overriding
# Method overriding means redefining a parent class method
# in the child class.


# Parent class
class Student:

    def study(self):
        print("Student is studying")


# Child class
class DataScienceStudent(Student):

    # Overriding the parent class method
    def study(self):
        print("Sankalp is studying Data Science")


# Another child class
class PythonStudent(Student):

    # Overriding the parent class method
    def study(self):
        print("Pankaj is studying Python")


# Creating objects
student1 = DataScienceStudent()
student2 = PythonStudent()

# Calling the overridden methods
student1.study()
student2.study()