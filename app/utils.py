import mlflow

def load_model():
    return mlflow.sklearn.load_model("models:/Apartments/production")
