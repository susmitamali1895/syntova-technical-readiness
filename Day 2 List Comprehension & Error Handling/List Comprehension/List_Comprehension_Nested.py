# Nested List Comprehension
# A list comprehension inside another list comprehension

numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

flat_numbers = [number for row in numbers for number in row]

print("Flattened List:", flat_numbers)


# Nested for loop

numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

flat_list = []

for row in numbers:
    for number in row:
        flat_list.append(number)

print("Using Nested Loop:", flat_list)


# Get even numbers from nested lists

numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

even_numbers = [
    number
    for row in numbers
    for number in row
    if number % 2 == 0
]

print("Even Numbers:", even_numbers)