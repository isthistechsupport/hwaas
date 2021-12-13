from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h1 style='color:blue'>Hello World!</h1>"

@app.route("/api")
def hello_world_api():
    return {"message": "Hello World!"}

if __name__ == "__main__":
    app.run(host='0.0.0.0')