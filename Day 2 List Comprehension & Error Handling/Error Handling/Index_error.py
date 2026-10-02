# IndexError
# IndexError occurs when we try to access an invalid index.


numbers = [10, 20, 30]

try:
    print(numbers[5])

except IndexError:
    print("Index does not exist")

# PRACTICAL EXAMPLE
# Accessing student marks using an index


students = ["Neha","Preeti","Prajkta", "Komal"]
marks = [85, 78, 92, 88]

try:
    student_index = int(input("Enter student index (0-3): "))

    print("Student:", students[student_index])
    print("Marks:", marks[student_index])

except IndexError:
    print("Invalid index. Please enter an index between 0 and 3")

except ValueError:
    print("Please enter a valid number")