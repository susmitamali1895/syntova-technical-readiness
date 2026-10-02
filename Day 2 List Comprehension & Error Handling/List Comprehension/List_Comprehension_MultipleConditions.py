# List Comprehension with multiple conditions
# Both conditions must be true

numbers = [10, 15, 20, 25, 30, 35, 40]

# Here used FOR , IF & AND conditions
result = [number for number in numbers if number > 15 and number < 35]

print("Numbers between 15 and 35:", result)

# Select students who scored above 70
# or exactly 50 # OR condition

marks = [45, 50, 62, 75, 80, 90, 35]

selected_marks = [mark for mark in marks if mark > 70 or mark == 50]

print("Selected marks:", selected_marks)