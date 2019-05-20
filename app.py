from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return("<h1>Home Page<h1>"+"<h6>Hello, world!<h6>")
#If run from docker specify the host and no debug mode
if __name__ == '__main__':
    app.run()
