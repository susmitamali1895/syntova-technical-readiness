# Hierarchical Inheritance
# Multiple child classes inherit from one parent class.


class Student:

    def student_details(self):
        print("Student belongs to Syntova")


class DataScienceStudent(Student):

    def course(self):
        print("Gaurav is studying Data Science")


class PythonStudent(Student):

    def course(self):
        print("Swajit is studying Python")


student1 = DataScienceStudent()
student2 = PythonStudent()

student1.student_details()
student1.course()

print()

student2.student_details()
student2.course()