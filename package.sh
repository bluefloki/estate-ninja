#!/bin/bash

# script to package the source code for sharing and testing
# Specify the files and folders to include in the zip
files_to_zip=(
    "data"
    "app.py"
    ".gitignore"
    "build.sh"
    "main.ipynb"
    "model.joblib"
    "package-lock.json"
    "package.json"
    "package.sh"
    "readme.md"
    "requirements.txt"
    "run.sh"
    "tailwind.config.js"
    "model.joblib"
    "static"
    "templates"
)

# Create a zip file and place it in the parent directory
zip -r ../source.zip "${files_to_zip[@]}"

