# Encapsulation
# Encapsulation means keeping data and methods together inside a class.
# __ is used to make a variable private.


class Student:

    def __init__(self, name, age):
        self.name = name
        self.__age = age

    def display_details(self):
        print("Name:", self.name)
        print("Age:", self.__age)

    def update_age(self, age):
        self.__age = age
        print("Age updated successfully")


# Creating object
student1 = Student("Neeta", 25)

# Calling method
student1.display_details()

print()

# Updating private variable using method
student1.update_age(26)

print()

# Display updated details
student1.display_details()