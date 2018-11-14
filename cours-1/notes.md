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

Un problème courant dans la production de données est celui de la conservation d'étapes : on développe souvent des principes de nomenclatures particulièrement personnels qui finissent bien souvent pas rendre l'ensemble d'un dossier illisible. C'est un cas de figure que l'on retrouve souvent avec rapports, mémoires, thèse.

Il est par ailleurs rare de s'en tenir à un système stable, à un ou plusieurs..

## Slide 2

C'est d'ailleurs dans le nombre que cette gestion devient bien complexe : plus de personnes travaillent sur le même document ou projet et plus la capacité à casser un processus est probable. Imaginez quand en plus il s'agit d'une base de code qui est censé continuer à fonctionner comme un ensemble.

## Slide 2bis

À partir de ces documents donc, d'après vous, quels besoins éprouvent les utilisateur-rice-s ?
    - Comprendre les versions
    - Pouvoir revenir en arrière, avoir une "trace"
    - Pouvoir avoir une collaboration simple

## Slide 3

- Donner les réponses

## Slide 4

Le versionnage est un processus essentiel de la gestion de données et de documents numériques quand la majorité de votre travail se passe sur plate-forme informatique.

Il existe bien sûr des outils de sauvegarde distante, mais il ne couvrent que peu les points évoqués plus haut, à savoir la capacité de revenir en arrière ainsi que la traçabilité. Ce n'est pas le coeur de leur fonctionnalité.

Sans ignorer par ailleurs le fait que vous êtes dépendant-e-s du bon vouloir des serveurs : aucune archive n'est disponible localement.

Dans ce contexte, des logiciels de versionnages se mettent en place. Les plus anciens sont SVN, que vous avez sûrement déjà croisé en tombant sur un site tel que SourceForge pour télécharger un logiciel. 

Git lui est né en 2005 pour aider à développer le noyau Linux. Il est sous licence libre.

## Slide 5

Les principes généraux de git sont assez simple : on travaille dans un dossier qui, avec ses sous-dossiers, constitue un dépôt, ou repository.

On remarquera qu'à la racine de ce dépôt se trouve un dossier caché nommé ".git" qui, en fait, contient l'intégralité des archives du dépôt.

Contrairement à Dropbox et consorts, les modifications sont archivées par acte volontaire humain. Ces modifications sont appelées "commit" (valider, engager). Ces ensembles de modifications sont porteuses d'un message qui est obligatoire. Elles sont aptes à comporter des modifications sur plusieurs fichiers, et ces fichiers doivent être ajoutés explicitement : on peut enregistrer ainsi des modifications sur un fichier A sans enregistrer les prémices de modifications sur un fichier B.

## Slide 6

On distingue trois "états" des fichiers :

- Un état de travail : on modifie, mais rien n'est communiqué à l'entrepôt git.
- Un état intermédiaire, d'enregistrement en cours : on ajoute des fichiers, mais les fichiers ne sont pas enregistrés en *commit*.
- Un état d'archivage : l'ensemble des modifications sont archivées.

Pour utiliser une métaphore discutable, pensez à un déménagement : le working directory, c'est votre habitation. Vous allez déplacez les cartons dans votre camion à déménagement : tant que le camion n'est pas parti, il est possible de prioriser l'une ou l'autre des pièces à déménager : c'est la *staging area*. Une fois le camion parti et arrivé dans votre nouvelle habitation, le carton est disponible, mais commit : vous n'allez pas lui faire faire le chemin inverse.

## Slide 7

On peut s'en sortir sur git sans grandes difficultés avec quelques commandes de base :

- `git init` crée un dépôt dans le dossier courant
- `git add` ajoute un fichier dans la staging area, `git add -A` ajoute tous les fichiers nouveaux, modifiés et supprimés dans la staging area
- `git commit -m "Message du commit"` enregistre le commit avec un  message
- `git log` affiche l'histoire du repository
- `git diff` affiche la différence entre l'état archivé et l'état actuel.
- `git status` affiche le statut actuel du dépôt

## Slide 8 

En cas de difficultés avec les couleurs; remarquez qu'il est possible de les changer.

## Slide 9

La qualité des messages d'archivage est primordiale : faites-y attention. Il est important dans un historique de savoir où retourner.


# Slide 10

Faire une démo (essayer de faire deviner les commandes)

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
- `git diff` # faire remarquer qu'il n'y a pas de diff puisqu'il n'y a encore rien d'enregistré dans l'archive
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
- `git log` # faire remarquer les noms de commits (ne pas utiliser le terme hash)
- Copier ou télécharger l'image [blanc.png](https://ponteineptique.github.io/cours-git/cours-1/images/blanc.png)
- `git add blanc.png`
- `git commit -m "Ajout de l'image blanche"`
- Copier ou télécharger l'image [blanc1.png](https://ponteineptique.github.io/cours-git/cours-1/images/blanc1.png) en la renommant blanc
- git diff
- `git add blanc.png`
- `git commit -m "correction de l'image blanche"`

# Slide 11

- Tenter la même chose avec une image blanche et une image blanche avec un carré noire
        -> Parler des limitations pour les fichiers compilés !

