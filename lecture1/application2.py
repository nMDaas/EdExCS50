from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
  return"Hello, World!!"

@app.route("/<string:name>")
def hello(name):
    name = name.capitalize()
    return f"<h1>Hello {name}!</h1>"

#run with:
#export FLASK_APP=application1.py
#flask run

#OR
# ./runflask application1.py
