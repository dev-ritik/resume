#!/bin/bash

xelatex -interaction=nonstopmode -halt-on-error -jobname=resume main.tex

if [[ -d "dist" ]]; then
    rm -rf dist/
fi
mkdir dist/

cp resume.pdf dist/
rm resume.*