FROM python:3.8

WORKDIR /app

ENV AWS_ACCESS_KEY_ID=mlflow_admin
ENV AWS_SECRET_ACCESS_KEY=mlflow_admin
ENV MLFLOW_S3_ENDPOINT_URL=http://localhost:9000
ENV MLFLOW_TRACKING_URI=http://localhost:5000

COPY . .

RUN pip install -r requirements.txt

CMD bash start.sh

EXPOSE 8000


# docker build -t fast-api-app:v0.0.1 .