from flask import Flask
import os
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')

@app.route('/')
def home():
    return "Welcome to docerized Flask app!"

if __name__ == "__main__":
    app.run(debug=True, port=5000)