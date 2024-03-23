#!/bin/bash

# script to build production code
# Specify the files and folders to include in the zip
files_to_zip=(
    "app.py"
    "model.joblib"
    "run.sh"
    "static"
    "templates"
)

# Create a zip file and place it in the parent directory
zip -r ../estate_ninja.zip "${files_to_zip[@]}"
