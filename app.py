import os
from flask import Flask

# Create a Flask application instance
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return 'Hello World'

# Get port from environment variable, default to 8080 if not set
port = int(os.environ.get("PORT", 8080))

# Run the application
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=port, debug=True)
