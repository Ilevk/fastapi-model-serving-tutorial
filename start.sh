export AWS_ACCESS_KEY_ID=mlflow_admin
export AWS_SECRET_ACCESS_KEY=mlflow_admin
export MLFLOW_S3_ENDPOINT_URL=http://localhost:9000
export MLFLOW_TRACKING_URI=http://localhost:5000

uvicorn app.main:app --reload