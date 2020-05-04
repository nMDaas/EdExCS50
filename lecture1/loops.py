from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    names=["Alice", "Bob", "Charlie"]
    return render_template("loops.html", names=names)



 #run with:
 #export FLASK_APP=application1.py
 #flask run

 #OR
 # ./runflask application1.py
