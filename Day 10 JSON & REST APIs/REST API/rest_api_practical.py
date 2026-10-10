
from flask import Flask, request
from flask_restx import Api, Resource, fields

app = Flask(__name__)

api = Api(
    app,
    title="Product REST API",
    description="REST API CRUD Operations with JSON Responses",
    version="1.0"
)

product_ns = api.namespace("products", description="Product operations")

products = {
    1: {
        "id": 1,
        "name": "Wireless Keyboard",
        "price": 1200,
        "category": "Electronics"
    },
    2: {
        "id": 2,
        "name": "Water Bottle",
        "price": 350,
        "category": "Accessories"
    },
    3: {
        "id": 3,
        "name": "Reading Lamp",
        "price": 650,
        "category": "Home"
    }
}

product_model = api.model("Product", {
    "name": fields.String(required=True, description="Product name"),
    "price": fields.Float(required=True, description="Product price"),
    "category": fields.String(required=True, description="Product category")
})

price_model = api.model("ProductPrice", {
    "price": fields.Float(required=True, description="New product price")
})


# Home endpoint
@api.route("/")
class Home(Resource):

    def get(self):
        return {
            "status": "success",
            "message": "Welcome to Product REST API",
            "available_operations": [
                "GET",
                "POST",
                "PUT",
                "PATCH",
                "DELETE"
            ]
        }, 200


# Get all products and create a product
@product_ns.route("/")
class ProductList(Resource):

    @api.doc(responses={200: "Products retrieved successfully"})
    def get(self):
        return {
            "status": "success",
            "message": "All products retrieved successfully",
            "total_products": len(products),
            "products": list(products.values())
        }, 200

    @api.expect(product_model, validate=True)
    @api.doc(responses={201: "Product created successfully"})
    def post(self):
        data = request.get_json()

        new_id = max(products.keys(), default=0) + 1

        new_product = {
            "id": new_id,
            "name": data["name"],
            "price": data["price"],
            "category": data["category"]
        }

        products[new_id] = new_product

        return {
            "status": "success",
            "message": "Product created successfully",
            "created_product": new_product,
            "total_products": len(products)
        }, 201


# Get, update and delete a product
@product_ns.route("/<int:product_id>")
class ProductDetails(Resource):

    @api.doc(
        params={"product_id": "Enter product ID"},
        responses={200: "Product found", 404: "Product not found"}
    )
    def get(self, product_id):
        if product_id not in products:
            return {
                "status": "error",
                "message": "Product not found",
                "product_id": product_id
            }, 404

        return {
            "status": "success",
            "message": "Product details retrieved successfully",
            "product": products[product_id]
        }, 200

    @api.expect(product_model, validate=True)
    @api.doc(responses={200: "Product updated", 404: "Product not found"})
    def put(self, product_id):
        if product_id not in products:
            return {
                "status": "error",
                "message": "Product not found",
                "product_id": product_id
            }, 404

        data = request.get_json()

        updated_product = {
            "id": product_id,
            "name": data["name"],
            "price": data["price"],
            "category": data["category"]
        }

        products[product_id] = updated_product

        return {
            "status": "success",
            "message": "Product updated successfully",
            "updated_product": updated_product
        }, 200

    @api.doc(responses={200: "Product deleted", 404: "Product not found"})
    def delete(self, product_id):
        if product_id not in products:
            return {
                "status": "error",
                "message": "Product not found",
                "product_id": product_id
            }, 404

        deleted_product = products.pop(product_id)

        return {
            "status": "success",
            "message": "Product deleted successfully",
            "deleted_product": deleted_product,
            "remaining_products": list(products.values()),
            "total_products_remaining": len(products)
        }, 200


# Partially update a product
@product_ns.route("/<int:product_id>/price")
class ProductPrice(Resource):

    @api.expect(price_model, validate=True)
    @api.doc(responses={200: "Price updated", 404: "Product not found"})
    def patch(self, product_id):
        if product_id not in products:
            return {
                "status": "error",
                "message": "Product not found",
                "product_id": product_id
            }, 404

        data = request.get_json()

        products[product_id]["price"] = data["price"]

        return {
            "status": "success",
            "message": "Product price updated successfully",
            "updated_product": products[product_id]
        }, 200


# Search products by name
@product_ns.route("/search")
class ProductSearch(Resource):

    @api.doc(params={"name": "Enter a product name to search"})
    def get(self):
        search_name = request.args.get("name", "").strip().lower()

        results = [
            product for product in products.values()
            if search_name in product["name"].lower()
        ]

        return {
            "status": "success",
            "message": "Search completed successfully",
            "search_term": search_name,
            "total_results": len(results),
            "results": results
        }, 200


if __name__ == "__main__":
    app.run(debug=True)
