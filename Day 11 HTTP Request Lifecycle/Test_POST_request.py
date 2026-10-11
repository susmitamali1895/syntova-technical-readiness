
import requests

url = "http://127.0.0.1:5000/products"

# for 400 -Bad responce check change this name empty and price in minus
#product_data = {
   # "name": "",
   # "price": -100
#}

product_data = {
    "name": "Wireless Headphones",
    "price": 2500
}

response = requests.post(url, json=product_data)

print("HTTP REQUEST SENT")
print("Method: POST")
print("URL:", url)
print("Request Data:", product_data)

print("\nHTTP RESPONSE RECEIVED")
print("Status Code:", response.status_code)
print("Response Body:", response.json())
print("Response Time:", response.elapsed.total_seconds(), "seconds")
