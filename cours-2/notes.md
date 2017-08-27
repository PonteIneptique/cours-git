# Slide 2

```bash

git branch resume
git checkout resume
# Télécharger https://services.github.com/on-demand/downloads/fr/github-git-cheat-sheet.pdf
git status
git add github-git-cheat-sheet.pdf
git commit -m "Ajout de la cheatsheet de github"
git status
git log
git checkout master
# Regarder le dossier (ls -la)
git status
git log
git checkout dev
gedit cours1.md # Ajouter l'adresse que l'on a utilisé pour le téléchargement
git diff
git status
git add cours1.md
git commit -m "Ajout de l'adresse d'origine du document aux notes du cours"
git status
git checkout master
# Regarder le dossier et cours1.md
git log
git merge resume
# Regarder le dossier et cours1.md
git log
```

# Slide 4

```bash
git status # Être sur d'être sur master
gedit exercice.xml # Copier le contenu de https://ponteineptique.github.io/cours-git/cours-2/exemple.xml
git add exercice.xml
git commit -m "Ajout d'un barebone xml"
git branch changement-texte
git checkout changement-texte
gedit exercice.xml # Changer titre, auteur et description
git commit -m "Ajout d'un barebone xml"
git log
git status

```

# Slide 5

```bash
git checkout master
git log 
git status
gedit exercice.xml # Titre et l'auteur pour "Epigrammes" et "Martial"
git add exercice.xml
git commit -m "Titre martial"
git merge changement-texte
git log
git status
```

```bash
gedit exercice.xml # Titre et l'auteur pour "Epigrammes" et "Martial"
git add exercice.xml
git commit -m "Résolution d'un conflit pour version personnelle"
git status
git log
```