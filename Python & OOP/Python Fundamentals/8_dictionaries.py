# Dictionary:
# A dictionary is a collection that stores data in key-value pairs.

# Properties:
# - Uses curly brackets {}
# - Stores data as key-value pairs
# - Keys must be unique
# - Mutable (can be changed)
# - Values can be of different data types


student = {
    "name": "Susmita",
    "age": 30,
    "course": "Data Science"
}

print("Original Dictionary:", student)

# get() - gets the value of a key
print("Name:", student.get("name"))

# keys() - returns all keys
print("Keys:", student.keys())

# values() - returns all values
print("Values:", student.values())

# items() - returns key-value pairs
print("Items:", student.items())

# update() - adds or updates a key-value pair
student.update({"city": "Pune"})
print("After update:", student)

# pop() - removes a specific key
student.pop("age")
print("After pop:", student)

# popitem() - removes the last key-value pair
student.popitem()
print("After popitem:", student)

# setdefault() - adds a key if it does not already exist
student.setdefault("experience", "Fresher")
print("After setdefault:", student)

# clear() - removes all key-value pairs
student.clear()
print("After clear:", student)