from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    headline = "Hello!"
    return render_template("index.html", headline=headline)

@app.route("/bye")
def bye():
    headline = "Goodbye!"
    return render_template("index.html", headline=headline)

 #run with:
 #export FLASK_APP=application1.py
 #flask run

 #OR
 # ./runflask application1.py
