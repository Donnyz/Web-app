from logging import NullHandler
from flask import Flask
from flask import render_template
from login import LoginForm

app = Flask(__name__)

@app.route('/')
@app.route('/home')
def home():
    return "welcome home!"


@app.route('/login')
def login():
    return "compila il form"

@app.route('/about')
def about():
    return #
    