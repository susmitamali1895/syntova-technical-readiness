# create class named student 
class Student:

    # Constructor __init__
    def __init__(self, name, age):
        self.name = name
        self.age = age

    # Method
    def display_details(self):
        print("Student Name:", self.name)
        print("Age:", self.age)


# Creating an object
student1 = Student("Susmita", 30)

# Displaying student details
student1.display_details()