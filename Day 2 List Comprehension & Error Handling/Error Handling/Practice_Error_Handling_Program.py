
# Student marks validation system

class InvalidMarksError(Exception):
    pass


students = {
    "Revati": [85, 78, 92],
    "Snehal": [75, 88, 80],
    "Mayuri": [90, 95, 87],
    "Shruti": [82, 89, 91]
}


try:
    student_name = input("Enter student name: ")

    # Access student data
    marks = students[student_name]

    try:
        subject_index = int(input("Enter subject index (0-2): "))

        # Access marks using index
        student_marks = marks[subject_index]

        # Validate marks
        if student_marks < 0 or student_marks > 100:
            raise InvalidMarksError("Marks must be between 0 and 100")

    except ValueError:
        print("Subject index must be a number")

    except IndexError:
        print("Invalid subject index. Enter 0, 1, or 2")

    except InvalidMarksError as error:
        print("Error:", error)

    else:
        print("Student:", student_name)
        print("Marks:", student_marks)
        print("Result: Valid marks")

except KeyError:
    print("Student not found")

finally:
    print("Student marks process completed")
    