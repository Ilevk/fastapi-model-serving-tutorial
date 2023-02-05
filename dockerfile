FROM python:3.8

WORKDIR /app

ENV AWS_ACCESS_KEY_ID=mlflow_admin
ENV AWS_SECRET_ACCESS_KEY=mlflow_admin
ENV MLFLOW_S3_ENDPOINT_URL=http://host.docker.internal:9000
ENV MLFLOW_TRACKING_URI=http://host.docker.internal:5000

COPY . .

RUN pip install -r requirements.txt

CMD uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

EXPOSE 8000


# docker build -t fast-api-app:v0.0.1 .
# docker run -p 8000:8000 fast-api-app:v0.0.1