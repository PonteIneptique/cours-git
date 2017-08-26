Notes pour le cours
===================

# Objectif

1. (Parenthèse) Déroulé du cours et objectifs
1. Compréhension de ce qu'est Git (histoire comprise)
	1. À quel besoin répond Git ?
	2. Naissance de Git
		1. Quels autres logiciels de versioning ?
	3. Fonctionnement global
2. Fonctions de bases :
	1. Vocabulaire : qu'est-ce qu'un *repository* ?
	2. Initialiser un repository
	3. Ajouter et enregistrer une modification
		1. git add
		2. git commit & git commit -m
3. Les branches
	1. Principe des branches
	2. 


# Sources pour l'enseignant

- https://programminghistorian.org/lessons/getting-started-with-github-desktop
- https://recompilermag.com/issues/issue-1/how-to-teach-git/
- http://liris.cnrs.fr/~pchampin/enseignement/intro-git/
- https://betterexplained.com/articles/aha-moments-when-learning-git/

# Aller plus loin

- 

# Notes de cours

## Slide 1

- La gestion de document numérique, même siens seulement, peut conduire à des situations peu aisées à gérer.
- Les nomenclatures changent, même quand on est seuls. 

## Slide 2

- La gestion de documents à plusieurs est encore plus complexe, surtout quand l'on vient à gérer des morceaux de code
- A partir de ces documents, quels besoins éprouvent-on ? Faire deviner :
	- Comprendre les versions
	- Pouvoir revenir en arrière, avoir une "trace"
	- Pouvoir avoir une collaboration simple

## Slide 3

- Donner les réponses

## Slide 4

- Le versionnage est un outil essentiel de la gestion de données et de documents numériques quand la majorité de votre travail se passe sur PC.
- Dropbox, google drive et consorts ne sont pas des solutions : le retour arrière, la tracabilité n'est pas assurée.

# Slide 8, 9, 10

Faire une démo (Essayer de faire deviner les commandes)

- `cd dev`
- `mkdir notes-du-cours`
- `cd notes-du-cours`
- `git init`
- `ls -la`
- `gedit cours1.md`
	- Copier les notes jusqu'ici
- `ls -la`
- `git status`
- `git diff`
	- Slide 9
- `git add cours1.md`
- `git status`
- `git diff` # Faire remarquer qu'il n'y a pas de diff puisqu'il n'y a encore rien d'enregistré dans l'archive
- `git commit -m "Premières notes du cours"`
	- Slide 10
- `git log`
- `git status`
- `git diff`
- `gedit cours1.md`
	- Ajouter les notes précédentes
- `git status`
- `git diff`
- `git add cours1.md`
- `git status`
- `git diff`
- `git commit -m "Ajout de notes oubliées pour le cours 1"`
- `git status`
- `git diff`
- `git log` # Faire remarquer les noms de commits (ne pas utiliser le terme hash)
- Copier ou télécharger l'image [blanc.png](https://ponteineptique.github.io/cours-git/cours-1/images/blanc.png)
- `git add blanc.png`
- `git commit -m "Ajout de l'image blanche"`
- Copier ou télécharger l'image [blanc1.png](https://ponteineptique.github.io/cours-git/cours-1/images/blanc1.png) en la renommant blanc
- git diff
- `git add blanc.png`
- `git commit -m "correction de l'image blanche"`

# Slide 11

- Tenter la meme chose avec une image blanche et une image blanche avec un carré noire
		-> Parler des limitations pour les fichiers compilés !

# Slide 13

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

# Slide 15

```bash
git status # Être sur d'être sur master
gedit exercice.xml # Copier le contenu de https://ponteineptique.github.io/cours-git/cours-1/exemple.xml
git add exercice.xml
git commit -m "Ajout d'un barebone xml"
git branch changement-texte
git checkout changement-texte
gedit exercice.xml # Changer titre, auteur et description
git commit -m "Ajout d'un barebone xml"
git log
git status

```

# Slide 16

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