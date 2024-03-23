#!/bin/bash

# Create a virtual environment
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Install Flask and Joblib
pip install flask joblib scikit-learn pyarrow

# Run app.py
flask --app app run
