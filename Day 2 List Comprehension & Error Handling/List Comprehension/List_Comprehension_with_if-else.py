# List Comprehension with if-else
# Create a result for each student's marks

marks = [45, 78, 32, 90, 56, 25]

results = ["Pass" if mark >= 40 else "Fail" for mark in marks]

print("Results:", results)