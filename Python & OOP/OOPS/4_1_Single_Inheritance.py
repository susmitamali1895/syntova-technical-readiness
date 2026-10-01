# Single Inheritance
# One child class inherits from one parent class.


class Student:

    def student_details(self):
        print("Student belongs to Syntova")


class DataScienceStudent(Student):

    def course_details(self):
        print("Course: Data Science")


student = DataScienceStudent()

student.student_details()
student.course_details()