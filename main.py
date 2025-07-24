from fastapi import FastAPI
from .routers import rentals
from .database import create_db

app = FastAPI(title="PS5 Rental API")

# Create DB on startup
@app.on_event("startup")
def on_startup():
    create_db()

app.include_router(rentals.router, prefix="/rentals", tags=["Rentals"])

@app.get("/")
def root():
    return {"message": "Welcome to PS5 Rental API!"}
