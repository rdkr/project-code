"""Flask app."""
from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/test_page")
def test_page():
    """Test Page."""
    return "<h1>Welcome to the test page!<h1>"

if __name__ == '__main__':
    app.run()
