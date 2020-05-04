from flask import Flask, render_template, request, session
from flask_session import Session

app = Flask(__name__)

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

@app.route("/", methods=["GET","POST"])
def notes():
    if session.get("notes") is None:
        session["notes"]= []
    if request.method == "POST":
        note = request.form.get("note")
        session["notes"].append(note)

    return render_template("notes.html", notes=session["notes"])

 #run with:
 #export FLASK_APP=application1.py
 #flask run

 #OR
 # ./runflask application1.py
