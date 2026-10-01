# Creating a Class
class Student:

    # Method to display student details
    def display_details(self, name, age, course):
        print("Student Name:", name)
        print("Age:", age)
        print("Course:", course)


# Creating an Object
student1 = Student()

# Calling the method using the object
student1.display_details("Susmita", 25, "Data Science")
