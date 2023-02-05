from pydantic import BaseModel

class RequestModel(BaseModel):
    city: str
    transaction_date: str
    exclusive_use_area: float
    year_of_completion: int
    transaction_year_month: int
    floor: int
