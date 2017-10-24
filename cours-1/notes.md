Notes pour le cours
===================


# Sources pour l'enseignant

- https://programminghistorian.org/lessons/getting-started-with-github-desktop
- https://recompilermag.com/issues/issue-1/how-to-teach-git/
- http://liris.cnrs.fr/~pchampin/enseignement/intro-git/
- https://betterexplained.com/articles/aha-moments-when-learning-git/
- sources images : https://twitter.com/RichRogersIoT/status/914577613300965377?s=09

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

