from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "message": "E-Commerce FastAPI API is working!"
    }

@app.get("/about")
def about():
    return {
        "application": "E-Commerce API",
        "framework": "FastAPI",
        "status": "Active"
    }