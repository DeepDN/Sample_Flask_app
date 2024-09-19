from flask import Flask, render_template

# Initialize the Flask app
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return "Hello, Flask!"

# Define a route for an about page
@app.route('/about')
def about():
    return "This is the about page."

# Run the app
if __name__ == '__main__':
    app.run(debug=True)

