# Methods and Variables
# A variable stores data.
# A method is a function defined inside a class.


class Student:

    # Class variable
    school = "Syntova"

    # Constructor
    def __init__(self, name, age, course):
        # Instance variables
        self.name = name
        self.age = age
        self.course = course

    # Method to display student details
    def display_details(self):
        print("Name:", self.name)
        print("Age:", self.age)
        print("Course:", self.course)
        print("School:", Student.school)

    # Method to display greeting
    def greet(self):
        print("Hello", self.name)

    # Method to update course
    def update_course(self, new_course):
        self.course = new_course
        print("Updated Course:", self.course)

    # Method to check age
    def check_age(self):
        if self.age >= 18:
            print(self.name, "is an adult")
        else:
            print(self.name, "is a minor")


# Creating objects
student1 = Student("Pooja", 25, "Data Science")
student2 = Student("Namrata", 22, "Python")


# Calling methods
student1.display_details()
student1.greet()
student1.check_age()

print()

student2.display_details()
student2.greet()
student2.check_age()

print()

# Updating student course
student1.update_course("Machine Learning")

print()

# Display updated details
student1.display_details()