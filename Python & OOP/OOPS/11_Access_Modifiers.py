# Access Modifiers
# Access modifiers control how class data is accessed.


class Student:

    def __init__(self):
        # Public variable
        self.name = "Aakanksha"

        # Protected variable
        self._course = "Data Science"

        # Private variable
        self.__age = 24

    def display_details(self):
        print("Name:", self.name)
        print("Course:", self._course)
        print("Age:", self.__age)


student = Student()

# Public variable
print(student.name)

# Protected variable
print(student._course)

# Private variable
print(student._Student__age)

# Display all details using method
student.display_details()