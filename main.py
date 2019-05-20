"""Flask app."""
from flask import Flask

APP = Flask(__name__)

"""URL Routing list."""
@APP.route("/")
def home():
    """Home Page."""
    return "<h1>Home Page<h1>"+"<h6>Hello, world!<h6>"

@APP.route("/test_page")
def test_page():
    """Test Page."""
    return "<h1>Welcome to the test page!<h1>"

if __name__ == '__main__':
    APP.run(host='0.0.0.0', port=80)
