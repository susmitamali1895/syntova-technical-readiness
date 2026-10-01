# Tuple:
# A tuple is an ordered and immutable collection.
# Tuples use round brackets ().
# Tuple values cannot be changed after creation.

numbers = (10, 20, 30, 20, 40)

print("Tuple:", numbers)

# count() - counts how many times a value appears
print("Count of 20:", numbers.count(20))

# index() - returns the position of a value
print("Index of 30:", numbers.index(30))

# len() - returns the number of items
print("Length:", len(numbers))

# max() - returns the largest value
print("Maximum:", max(numbers))
