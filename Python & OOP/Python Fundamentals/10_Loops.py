# Loops
# A loop is used to repeat a block of code multiple times.
# Python mainly uses for loop and while loop.

# 1. Basic for loop with range()
for number in range(1, 6):
    print(number)


# 2. For loop with a list
fruits = ["Apple", "Mango", "Guava"]
for fruit in fruits:
    print(fruit)


# 3. For loop with a string
name = "Python"
for letter in name:
    print(letter)


# 4. range() with a step
for number in range(2, 11, 2):
    print(number)


# 5. while loop
number = 1
while number <= 5:
    print(number)
    number = number + 1


# 6. break
# break is used to stop the loop.
for number in range(1, 6):

    if number == 4:
        break

    print(number)


# 7. continue
# continue skips the current iteration.
for number in range(1, 6):

    if number == 3:
        continue

    print(number)


# 8. Nested loop
# A loop inside another loop is called a nested loop.
for i in range(1, 3):

    for j in range(1, 4):
        print(i, j)