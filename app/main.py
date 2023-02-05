from fastapi import FastAPI
from app.routers.apartment import router as apartment_router

app = FastAPI()

app.include_router(apartment_router, prefix="/v1/apmt")
