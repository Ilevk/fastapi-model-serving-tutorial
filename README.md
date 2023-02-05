# fastapi-model-serving-tutorial

## Setting Environment
```
pip install -r requirements.txt
```

## Run Server
```
# Need mlflow & minio server
bash start.sh
```

## Example
```
curl -X 'POST' \
  'http://127.0.0.1:8000/v1/apmt/predict' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "city": "seoul",
  "transaction_date": "2023",
  "exclusive_use_area": 0,
  "year_of_completion": 0,
  "transaction_year_month": 0,
  "floor": 0
}'
```