import mlflow

def load_model():
    return mlflow.sklearn.load_model("models:/apmt_model/production")
