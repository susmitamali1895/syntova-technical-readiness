# Abstraction
# Abstraction means hiding unnecessary implementation details.
# It shows only the important information.

# ABC = Abstract Base Class
from abc import ABC, abstractmethod


# Abstract class
class Student(ABC):

    @abstractmethod
    def study(self):
        pass


# Child class
class DataScienceStudent(Student):

    def study(self):
        print("Neeta is studying Data Science")


# Child class
class PythonStudent(Student):

    def study(self):
        print("Shruti is studying Python")


# Creating objects
student1 = DataScienceStudent()
student2 = PythonStudent()

# Calling methods
student1.study()
student2.study()