from pydantic import BaseModel

class ApartmentModel(BaseModel):
    transaction_real_price: float 

class ResponseModel(BaseModel):
    status_code: int
    data: ApartmentModel 