from fastapi import FastAPI
from aws_lambda_powertools.utilities.asgi import ASGIApp

app = FastAPI()

@app.get("/route1")
def read_root():
    return {"Hello": "World"}

@app.get("/route2")
def read_root():
    return {"Hello": "World2"}

@app.get("/route3")
def read_root():
    return {"Hello": "World3"}

handler = ASGIApp(app)