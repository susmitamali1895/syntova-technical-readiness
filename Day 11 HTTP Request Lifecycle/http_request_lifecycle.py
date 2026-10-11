
from flask import Flask, request, jsonify
from datetime import datetime
import time

app = Flask(__name__)

# Runs before every request
@app.before_request
def before_request():
    request.start_time = time.time()
    print("\n--- HTTP REQUEST RECEIVED ---")
    print("Method:", request.method)
    print("URL:", request.url)
    print("Path:", request.path)
    print("Time:", datetime.now().strftime("%Y-%m-%d %H:%M:%S"))


# Runs after every response
@app.after_request
def after_request(response):
    duration = round(
        (time.time() - getattr(request, "start_time", time.time())) * 1000,
        2
    )

    response.headers["X-Request-Time-Ms"] = str(duration)

    print("--- HTTP RESPONSE SENT ---")
    print("Status Code:", response.status_code)
    print("Response Time:", str(duration) + " ms")

    return response


# Home endpoint
@app.route("/")
def home():
    return jsonify({
        "status": "success",
        "message": "Welcome to HTTP Request Lifecycle API",
        "step": "Request received and response sent"
    }), 200


# GET request
@app.route("/products", methods=["GET"])
def get_products():
    products = [
        {"id": 1, "name": "Laptop", "price": 45000},
        {"id": 2, "name": "Keyboard", "price": 1200},
        {"id": 3, "name": "Mouse", "price": 600}
    ]

    return jsonify({
        "status": "success",
        "message": "Products retrieved successfully",
        "total_products": len(products),
        "products": products
    }), 200


# GET request with a URL parameter
@app.route("/products/<int:product_id>", methods=["GET"])
def get_product(product_id):
    products = {
        1: {"id": 1, "name": "Laptop", "price": 45000},
        2: {"id": 2, "name": "Keyboard", "price": 1200},
        3: {"id": 3, "name": "Mouse", "price": 600}
    }

    product = products.get(product_id)

    if product is None:
        return jsonify({
            "status": "error",
            "message": "Product not found",
            "product_id": product_id
        }), 404

    return jsonify({
        "status": "success",
        "product": product
    }), 200


# POST request with JSON body
@app.route("/products", methods=["POST"])
def create_product():
    data = request.get_json(silent=True)

    if not isinstance(data, dict):
        return jsonify({
            "status": "error",
            "message": "A valid JSON object is required"
        }), 400

    name = data.get("name")
    price = data.get("price")

    if not isinstance(name, str) or not name.strip():
        return jsonify({
            "status": "error",
            "message": "Product name is required"
        }), 400

    if (
        isinstance(price, bool)
        or not isinstance(price, (int, float))
        or price <= 0
    ):
        return jsonify({
            "status": "error",
            "message": "Price must be a positive number"
        }), 400

    return jsonify({
        "status": "success",
        "message": "Request processed successfully",
        "received_data": {
            "name": name.strip(),
            "price": price
        }
    }), 201


# GET request with a query parameter
@app.route("/search", methods=["GET"])
def search_product():
    keyword = request.args.get("name", "")

    return jsonify({
        "status": "success",
        "search_keyword": keyword,
        "message": "Search request processed"
    }), 200


# Display request headers
@app.route("/headers", methods=["GET"])
def get_headers():
    return jsonify({
        "status": "success",
        "user_agent": request.headers.get("User-Agent", "Not provided"),
        "content_type": request.headers.get("Content-Type", "Not provided"),
        "message": "Request headers received successfully"
    }), 200


# Handle unknown URLs
@app.errorhandler(404)
def not_found(error):
    return jsonify({
        "status": "error",
        "message": "The requested URL was not found",
        "path": request.path
    }), 404


# Handle internal server errors
@app.errorhandler(500)
def internal_error(error):
    return jsonify({
        "status": "error",
        "message": "An internal server error occurred"
    }), 500


if __name__ == "__main__":
    app.run(debug=True)
