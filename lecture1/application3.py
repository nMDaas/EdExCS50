from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
  return render_template("index.html")

 #run with:
 #export FLASK_APP=application1.py
 #flask run

 #OR
 # ./runflask application1.py
