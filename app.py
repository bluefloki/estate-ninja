from flask import Flask, render_template, request
import joblib

model = joblib.load("model.joblib")

app = Flask(__name__)


@app.route("/", methods=("GET", "POST"))
def index():
    if request.method == "POST":
        # get form data
        form_data = request.form.to_dict()
        numeric_values = [float(value) for value in form_data.values()]

        # get price predictions
        predictions = model.predict([numeric_values])

        predicted_price = "${:,.0f}".format(predictions[0])
        print(predicted_price)

        return render_template("prediction.jinja", price=predicted_price)
    else:
        return render_template("index.jinja")


@app.route("/stats")
def stats():
    return render_template("stats.jinja")


# app.run(debug=True)
