# Strings
# A string is a sequence of characters enclosed in quotes.

name = "Susmita"

print(name)

# upper() - converts string to uppercase
print(name.upper())

# lower() - converts string to lowercase
print(name.lower())

# len() - returns the length of the string
print(len(name))

# strip() - removes spaces from beginning and end
text = "  Hello  "
print(text.strip())

# replace() - replaces a word or character
print(name.replace("Susmita", "Python"))

# find() - returns the position of a character or word
print(name.find("m"))

# count() - counts how many times a character or word appears
print(name.count("a"))

# startswith() - checks if string starts with given value
print(name.startswith("Su"))

# endswith() - checks if string ends with given value
print(name.endswith("ta"))