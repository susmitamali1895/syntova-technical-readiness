# List:
# A list is a collection used to store multiple values in one variable.

# Properties:
# - Uses square brackets []
# - Ordered collection
# - Mutable (can be changed)
# - Allows duplicate values
# - Supports indexing


# Creating a list

fruits = ["Apple", "Mango", "Guava"]

print(fruits)
print(fruits[0])

# append() used to add item in last position 
fruits.append("Banana") 

print(fruits)

# insert() - adds an item at a specific position
fruits.insert(1, "Orange")
print("After insert:", fruits)

# remove() - removes a specific item
fruits.remove("Mango")
print("After remove:", fruits)

# pop() - removes an item using its index
fruits.pop(0)
print("After pop:", fruits)

# sort() - sorts the list
fruits.sort()
print("After sort:", fruits)

# reverse() - reverses the list
fruits.reverse()
print("After reverse:", fruits)

# count() - counts how many times an item appears
fruits.append("Apple")
print("Apple count:", fruits.count("Apple"))

# index() - returns the position of an item
print("Apple index:", fruits.index("Apple"))

# clear() - removes all items
fruits.clear()
print("After clear:", fruits)