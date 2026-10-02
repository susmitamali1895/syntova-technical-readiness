# KeyError
# KeyError occurs when we try to access a key
# that does not exist in a dictionary.

student = {
    "name": "Swanali",
    "age": 29,
    "course": "Data Science"
}

try:
    print(student["city"])

except KeyError:
    print("The requested key does not exist")

# PRACTICAL EXAMPLE
# Accessing student details using dictionary keys

students = {
    "Anuja": {
        "age": 27,
        "course": "Data Science",
        "marks": 85
    },
    "Vidhi": {
        "age": 24,
        "course": "Python",
        "marks": 78
    }
}

try:
    student_name = input("Enter student name: ")

    student = students[student_name]

    print("Name:", student_name)
    print("Age:", student["age"])
    print("Course:", student["course"])
    print("Marks:", student["marks"])

except KeyError:
    print("Student or requested detail was not found")