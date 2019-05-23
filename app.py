"""Flask app."""
from flask import Flask
app = Flask(__name__)

"""URL Routing list."""
@app.route("/")
def home():
    """Home Page."""
    return "<h1>Home Page<h1>"+"<h6>Hello, world!<h6>"

@app.route("/test_page")
def test_page():
    """Test Page."""
    return "<h1>Welcome to the test page!<h1>"

if __name__ == '__main__':
    app.run()
