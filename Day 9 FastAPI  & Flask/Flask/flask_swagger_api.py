
from flask import Flask
from flask_restx import Api, Resource, fields

app = Flask(__name__)

api = Api(
    app,
    title="E-Commerce Flask API",
    version="1.0",
    description="Flask CRUD API Documentation"
)

products = [
    {"id": 1, "name": "Laptop", "price": 55000},
    {"id": 2, "name": "Headphones", "price": 2500}
]

product_model = api.model("Product", {
    "name": fields.String(required=True),
    "price": fields.Float(required=True)
})


@api.route("/")
class Home(Resource):
    def get(self):
        return {"message": "E-Commerce Flask API is working!"}


@api.route("/products")
class ProductList(Resource):
    def get(self):
        return {"products": products}

    @api.expect(product_model, validate=True)
    def post(self):
        data = api.payload
        new_product = {
            "id": max((p["id"] for p in products), default=0) + 1,
            "name": data["name"],
            "price": data["price"]
        }
        products.append(new_product)
        return {
            "message": "Product created successfully",
            "product": new_product
        }, 201


@api.route("/products/<int:product_id>")
class ProductDetail(Resource):
    def get(self, product_id):
        for product in products:
            if product["id"] == product_id:
                return product
        api.abort(404, "Product not found")

    @api.expect(product_model, validate=True)
    def put(self, product_id):
        for product in products:
            if product["id"] == product_id:
                data = api.payload
                product["name"] = data["name"]
                product["price"] = data["price"]
                return {
                    "message": "Product updated successfully",
                    "product": product
                }
        api.abort(404, "Product not found")

    def delete(self, product_id):
        for product in products:
            if product["id"] == product_id:
                products.remove(product)
                return {"message": "Product deleted successfully"}
        api.abort(404, "Product not found")


if __name__ == "__main__":
    app.run(debug=True)
