from flask import Flask

app = Flask(__name__)

@app.route("/status")
def hello_world():
    return "OK"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
