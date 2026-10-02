# List Comprehension with if condition

marks = [45, 78, 56, 90, 32, 67, 85]

passed_students = [mark for mark in marks if mark >= 60]

print("Marks above or equal to 60:", passed_students)

# Example 2 


prices = [500, 1200, 750, 2000, 450, 1500]

expensive_products = [price for price in prices if price > 1000]

print("Products above 1000:", expensive_products)