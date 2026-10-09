
from flask import Flask, request, jsonify

app = Flask(__name__)

# Sample data
products = [
    {"id": 1, "name": "Laptop", "price": 55000, "category": "Electronics"},
    {"id": 2, "name": "Headphones", "price": 2500, "category": "Accessories"},
    {"id": 3, "name": "Keyboard", "price": 1500, "category": "Accessories"}
]


#  Home API
@app.route("/", methods=["GET"])
def home():
    return jsonify({
        "message": "E-Commerce Flask API is working!"
    })


# About API
@app.route("/about", methods=["GET"])
def about():
    return jsonify({
        "application": "E-Commerce API",
        "framework": "Flask",
        "status": "Active"
    })


#  Health check
@app.route("/health", methods=["GET"])
def health_check():
    return jsonify({
        "status": "success",
        "message": "API is healthy"
    })


# Get all products
@app.route("/products", methods=["GET"])
def get_products():
    return jsonify({
        "count": len(products),
        "products": products
    })


#  Get product using path parameter
@app.route("/products/<int:product_id>", methods=["GET"])
def get_product(product_id):
    for product in products:
        if product["id"] == product_id:
            return jsonify(product), 200

    return jsonify({
        "error": "Product not found"
    }), 404


# Search using query parameters
@app.route("/search", methods=["GET"])
def search_products():
    category = request.args.get("category")
    max_price = request.args.get("max_price", type=float)

    results = products.copy()

    if category:
        results = [
            p for p in results
            if p["category"].lower() == category.lower()
        ]

    if max_price is not None:
        results = [
            p for p in results
            if p["price"] <= max_price
        ]

    return jsonify({
        "count": len(results),
        "products": results
    })


# Create product using POST
@app.route("/products", methods=["POST"])
def create_product():
    data = request.get_json(silent=True)

    if not isinstance(data, dict):
        return jsonify({
            "error": "A JSON object is required"
        }), 400

    name = data.get("name")
    price = data.get("price")
    category = data.get("category")

    if not name or price is None or not category:
        return jsonify({
            "error": "name, price and category are required"
        }), 400

    try:
        price = float(price)
    except (ValueError, TypeError):
        return jsonify({
            "error": "price must be a number"
        }), 400

    if price <= 0:
        return jsonify({
            "error": "price must be greater than zero"
        }), 400

    new_id = max(
        (p["id"] for p in products),
        default=0
    ) + 1

    new_product = {
        "id": new_id,
        "name": name,
        "price": price,
        "category": category
    }

    products.append(new_product)

    return jsonify({
        "message": "Product created successfully",
        "product": new_product
    }), 201


# Update product using PUT
@app.route("/products/<int:product_id>", methods=["PUT"])
def update_product(product_id):
    data = request.get_json(silent=True)

    if not isinstance(data, dict):
        return jsonify({
            "error": "A JSON object is required"
        }), 400

    for product in products:
        if product["id"] == product_id:
            name = data.get("name", product["name"])
            category = data.get("category", product["category"])

            try:
                price = float(data.get("price", product["price"]))
            except (ValueError, TypeError):
                return jsonify({
                    "error": "price must be a number"
                }), 400

            if price <= 0:
                return jsonify({
                    "error": "price must be greater than zero"
                }), 400

            product.update({
                "name": name,
                "price": price,
                "category": category
            })

            return jsonify({
                "message": "Product updated successfully",
                "product": product
            }), 200

    return jsonify({
        "error": "Product not found"
    }), 404


# Delete product
@app.route("/products/<int:product_id>", methods=["DELETE"])
def delete_product(product_id):
    for product in products:
        if product["id"] == product_id:
            deleted_product = products.pop(
                products.index(product)
            )

            return jsonify({
                "message": "Product deleted successfully",
                "product": deleted_product
            }), 200

    return jsonify({
        "error": "Product not found"
    }), 404


#  Greeting using query parameter
@app.route("/greet", methods=["GET"])
def greet():
    name = request.args.get("name", "Guest")

    return jsonify({
        "message": f"Hello, {name}!"
    })


# Division and error handling
@app.route("/divide", methods=["GET"])
def divide():
    try:
        a = float(request.args.get("a", "0"))
        b = float(request.args.get("b", "0"))
    except ValueError:
        return jsonify({
            "error": "a and b must be numbers"
        }), 400

    if b == 0:
        return jsonify({
            "error": "Division by zero is not allowed"
        }), 400

    return jsonify({
        "a": a,
        "b": b,
        "result": a / b
    })


# Custom 404 response
@app.errorhandler(404)
def page_not_found(error):
    return jsonify({
        "error": "Endpoint not found"
    }), 404


if __name__ == "__main__":
    app.run(debug=True)
