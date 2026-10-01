# Multilevel Inheritance
# A class inherits from another child class.


class Student:

    def student_details(self):
        print("Student: Swajit")


class Course(Student):

    def course_details(self):
        print("Course: Python")


class SyntovaStudent(Course):

    def institute_details(self):
        print("Institute: Syntova")


student = SyntovaStudent()

student.student_details()
student.course_details()
student.institute_details()