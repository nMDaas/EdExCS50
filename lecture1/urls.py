from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def urls():
    return render_template("urls.html")

@app.route("/more")
def more():
    return render_template("more.html")



 #run with:
 #export FLASK_APP=application1.py
 #flask run

 #OR
 # ./runflask application1.py
