import json
import os

print("=" * 55)
print("JSON OPERATIONS PRACTICAL")
print("=" * 55)

# Create a Python dictionary
product = {
    "product_id": 501,
    "product_name": "Desk Lamp",
    "price": 850,
    "available": True,
    "categories": ["Home", "Lighting"],
    "supplier": {
        "name": "Bright Supplies",
        "city": "Pune"
    }
}

print("\nPython Dictionary")
print(product)


# Convert Python dictionary into JSON string
json_string = json.dumps(product)

print("\nDictionary to JSON String")
print(json_string)


# Convert dictionary into formatted JSON
formatted_json = json.dumps(product, indent=4)

print("\nFormatted JSON")
print(formatted_json)


# Convert JSON string into Python dictionary
converted_data = json.loads(json_string)

print("\nJSON String to Python Dictionary")
print(converted_data)

print("Product Name:", converted_data["product_name"])
print("Product Price:", converted_data["price"])


# Create a JSON array containing multiple products
products = [
    {
        "product_id": 502,
        "product_name": "Travel Mug",
        "price": 450
    },
    {
        "product_id": 503,
        "product_name": "Yoga Mat",
        "price": 700
    },
    {
        "product_id": 504,
        "product_name": "Reading Stand",
        "price": 350
    }
]

print("\nJSON Array")
print(json.dumps(products, indent=4))


# Write JSON data into a file
file_name = "products_data.json"

try:
    with open(file_name, "w", encoding="utf-8") as file:
        json.dump(products, file, indent=4)

    print("\nJSON File Write")
    print("Data successfully written to", file_name)

except OSError as error:
    print("File writing error:", error)


# Read JSON data from the file
try:
    with open(file_name, "r", encoding="utf-8") as file:
        loaded_products = json.load(file)

    print("\nJSON File Read")
    print(json.dumps(loaded_products, indent=4))

except FileNotFoundError:
    print("Error: JSON file was not found.")

except json.JSONDecodeError:
    print("Error: The file contains invalid JSON.")

except OSError as error:
    print("File reading error:", error)


# Access values from loaded JSON data
if "loaded_products" in locals() and loaded_products:
    print("\nAccess JSON Values")

    for item in loaded_products:
        print("ID:", item["product_id"])
        print("Name:", item["product_name"])
        print("Price:", item["price"])
        print("-" * 30)


# Validate required fields
print("\nJSON Data Validation")

required_fields = ["product_id", "product_name", "price"]

for item in products:
    missing_fields = [
        field for field in required_fields
        if field not in item
    ]

    if missing_fields:
        print("Invalid product. Missing:", missing_fields)
    else:
        print(item["product_name"], "has all required fields.")


# Handle invalid JSON
print("\nInvalid JSON Error Handling")

invalid_json = '{"product_id": 505, "product_name": }'

try:
    result = json.loads(invalid_json)
    print(result)

except json.JSONDecodeError as error:
    print("Invalid JSON detected:", error.msg)


# Check data types after JSON conversion
print("\nData Type Checking")

print("Product ID type:", type(converted_data["product_id"]))
print("Product Name type:", type(converted_data["product_name"]))
print("Available type:", type(converted_data["available"]))
print("Categories type:", type(converted_data["categories"]))
print("Supplier type:", type(converted_data["supplier"]))


print("\n" + "=" * 55)
print("JSON PRACTICAL COMPLETED SUCCESSFULLY")
print("=" * 55)