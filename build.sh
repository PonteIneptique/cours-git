#!/bin/bash

pandoc README.md -o index.html --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2
for filename in **/slides.md; do
    pandoc -t beamer "$filename" -o "${filename%.md}.pdf" && \
    pandoc -t html5 "${filename%slides.md}notes.md" -o "${filename%slides.md}notes.html" --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2 && \
    pandoc "$filename" -o "${filename%slides.md}index.html" --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2
done