Les branches
============

## Slide 1

Les branches permettent d'avoir des états parallèles d'un même dépôt, une sorte de "sauvegarder sous" sur l'ensemble d'un dossier et des ses sous-dossiers. La différence, c'est qu'il existe tout un système pour fusionner ces versions entre elles.

Ces "sauvegarder sous" sont utiles, car ils permettent de travailler, en simultanée, sur des problèmes différents. Prenons par exemple une situation simple (dessin au tableau): 

1. j'ai une application web qui traite des données, 
2. deux collègues
3. on doit pour la semaine prochaine corriger deux problèmes distincts : 
    a. un problème de performance dans la communication avec la base de données, 
    b. le redesign des menus.
4. les deux collègues pourraient travailler sur les mêmes dossiers, mais séparer leur travail permettra de conserver :
    1. une forme de linéarité
    2. éviter des conflits entre leurs modifications durant leur travail
    3. ajoutera par exemple la capacité de changer, pour déboguer, l'affichage pour l'un, les données reçues pour l'autre.

Généralement, la branche principale s'appelle la branche *master*. Les autres branches ont des noms libres. Cependant, il arrive souvent de retrouver les branches suivantes : 
    - *dev* pour une version de développement qui diffère d'une version stable en master (on ne fournira sur la master que des corrections de bug tandis que l'oncontinuera à travailler à l'ajout de nouvelles fonctionnalités sur la *dev* pour la prochaine grande version)
    - *docs*, *doc* pour la documentation quand cela s'avère nécessaire.

On recommande généralement de faire une branche = une tache (soit un bug, une nouvelle fonctionnalité, etc.)

## Slide 2
## Slide 2

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

## Slide 4

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

## Slide 5

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