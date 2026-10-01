# Special Methods
# Special methods start and end with double underscores.


class Student:

    def __init__(self, name, course):
        self.name = name
        self.course = course

    def __str__(self):
        return "Student Name: " + self.name + ", Course: " + self.course


# Creating object
student1 = Student("Aakanksha", "Data Science")

# Printing object
print(student1)