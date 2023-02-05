import pandas as pd
from fastapi import APIRouter

from app.schemas.request import RequestModel
from app.schemas.response import ResponseModel, ApartmentModel
from app.utils import load_model


router = APIRouter()

@router.on_event('startup')
def startup():
    router.model = load_model()

@router.post("/predict",
             response_model=ResponseModel)
def predict(item: RequestModel):
    result = router.model.predict(pd.DataFrame([item.dict()]))
    
    return ResponseModel(status_code=200,
                         data=ApartmentModel(transaction_real_price=result))
