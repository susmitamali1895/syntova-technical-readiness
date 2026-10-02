# String List Comprehension
# Create a new list with names in uppercase

names = ["Neeta", "Shruti", "Pooja", "Akanksha"]

upper_names = [name.upper() for name in names]

print("Uppercase Names:", upper_names)


# String List Comprehension with condition
# Select names having more than 5 characters

names = ["Neeta", "Shruti", "Pooja", "Akanksha"]

long_names = [name for name in names if len(name) > 5]

print("Long Names:", long_names)


# Convert words to lowercase

words = ["PYTHON", "DATA", "MACHINE", "LEARNING"]

lower_words = [word.lower() for word in words]

print("Lowercase Words:", lower_words)