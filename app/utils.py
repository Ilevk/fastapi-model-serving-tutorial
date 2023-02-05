import mlflow

def load_model():
    return mlflow.sklearn.load_model("models:/rf_model/production")