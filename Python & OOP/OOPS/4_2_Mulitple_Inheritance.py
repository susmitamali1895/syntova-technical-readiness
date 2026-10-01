# Multiple Inheritance
# One child class inherits from two parent classes.


class Student:

    def student_details(self):
        print("Student: Gaurav")


class Course:

    def course_details(self):
        print("Course: Data Science")


class DataScienceStudent(Student, Course):

    def display(self):
        print("Institute: Syntova")


student = DataScienceStudent()

student.student_details()
student.course_details()
student.display()