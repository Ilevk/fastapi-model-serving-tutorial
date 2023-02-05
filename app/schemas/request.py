from enum import Enum
from pydantic import BaseModel

class CityEnum(Enum, str):
    서울특별시 = "서울특별시"
    부산광역시 = "부산광역시"

class RequestModel(BaseModel):
    city: CityEnum
    transaction_date: str
    exclusive_use_area: float
    year_of_completion: int
    transaction_year_month: int
    floor: int
