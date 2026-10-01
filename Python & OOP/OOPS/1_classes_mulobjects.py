# create class named student 

class Student:

    def display_details(self, name, age, course):
        print("Student Name:", name)
        print("Age:", age)
        print("Course:", course)
        print("------------------------")


# Creating first object
student1 = Student()

# Creating second object
student2 = Student()


# Calling method using first object
student1.display_details("Susmita", 25, "Data Science")


# Calling method using second object
student2.display_details("Snehal", 24, "Python Development")