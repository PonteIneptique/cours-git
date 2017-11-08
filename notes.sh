#!/bin/bash

for filename in **/slides.md; do
    pandoc -t html5 "${filename%slides.md}notes.md" -o "${filename%slides.md}notes.html" --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2 
done