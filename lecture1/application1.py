from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
  return"Hello, World!!"

@app.route("/david")
def david():
    return("Hello, David!")

#run with:
#export FLASK_APP=application1.py
#flask run

#OR
# ./runflask application1.py
