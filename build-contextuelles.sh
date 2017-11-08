#!/bin/bash
for filename in notes-contextuelles/**.md; do
    pandoc "$filename" -o "${filename%.md}.html" --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2
done