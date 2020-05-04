from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def forms():
    return render_template("forms.html")

@app.route("/hello", methods=["GET","POST"])
def hello():
    if request.method == "GET":
        return "Please submit the form instead."
    else:
    name = request.form.get("name")
    return render_template("hello.html", name=name)



 #run with:
 #export FLASK_APP=application1.py
 #flask run

 #OR
 # ./runflask application1.py
