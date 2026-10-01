# Polymorphism
# Polymorphism means one method can have different behaviors
# in different classes.


class Student:

    def study(self):
        print("Student is studying")


class DataScienceStudent(Student):

    def study(self):
        print("Neeta is studying Data Science")


class PythonStudent(Student):

    def study(self):
        print("Shruti is studying Python")


# Creating objects
student1 = DataScienceStudent()
student2 = PythonStudent()

# Calling the same method
student1.study()
student2.study()