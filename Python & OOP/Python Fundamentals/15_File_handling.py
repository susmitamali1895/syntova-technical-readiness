# File handling is the process of creating, reading, writing, updating, and managing files using a Python program. 

# Writing data into a file

file = open("student.txt", "w")

file.write("Name: Susmita\n")
file.write("Course: Data Science")

file.close()

print("File created successfully")