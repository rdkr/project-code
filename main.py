from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return("<h1>Home Page<h1>"+"<h6>Hello, world!<h6>")

if __name__ == '__main__':
    app.run(app.run(host='0.0.0.0', port=80))
