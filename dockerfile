FROM continuumio/miniconda3

WORKDIR /app

ENV AWS_ACCESS_KEY_ID=mlflow_admin
ENV AWS_SECRET_ACCESS_KEY=mlflow_admin
ENV MLFLOW_S3_ENDPOINT_URL=http://localhost:9000
ENV MLFLOW_TRACKING_URI=http://localhost:5000

COPY . .

RUN pip install -r requirements.txt

CMD uvicorn main:app --host 0.0.0.0 --port 8000

EXPOSE 8000
