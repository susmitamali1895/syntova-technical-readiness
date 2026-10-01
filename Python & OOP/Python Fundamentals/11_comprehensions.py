# List Comprehension
# List comprehension is a short and simple way to create a new list from an existing iterable.

# Create a list of squares
numbers = [1, 2, 3, 4, 5]

squares = [number * number for number in numbers]

print(squares)


# Create a list of even numbers
even_numbers = [number for number in numbers if number % 2 == 0]

print(even_numbers)


# Create a list of odd numbers
odd_numbers = [number for number in numbers if number % 2 != 0]

print(odd_numbers)