# Cours bonnes pratiques développement

## versionnage
- besoins :
	- garder les différentes versions pour pouvoir revenir en arrière
	- pouvoir travailler de manière collaborative
- plus ancien SVN (Subversion) => sourceforge par exemple
- Git : né en 2005 pour dév Linux
- principes Git :
	- on travaille dans un dépôt (ou repository)
	- Git crée un dossier caché dans lequel il va tout archiver
	- utilisateur est maître du moment où il archive
	- archivage = un commit
	- 3 états :
		- état de travail
		- état de futur enregistrement (staging area / stage)
		- état archivé
- commandes de base :
	- `git init` : initialisation => crée le dépôt
	- `git add [Nom de fichier]` : ajoute un fichier à l'archive
	- `git commit -m "Message du commit" [Nom de fichier]` : enregistrement des modifications
	- `git log` : historique du repository
	- `git diff` : différence entre état archivé et état actuel, de manière détaillée
	- `git status` : différence entre état archivé et état actuel

- un conseil : disposer d'un dossier dev à la racine utilisateur

# cours 2
- concept de branche
- branch par défaut = master
- head : le nom du dernier commit
- commandes de base :
	- `git branch [nom_branch]` : créer une branch
	- `git checkout [nom_branch]` : se déplacer dans branche
	- `git checkout -b [nom_branch]` : créer et se déplacer dans branche
	- `git merge [nom_branch]` : fusionner
    - `git checkout [numero commit]` : revenir à un certain commit, puis créer une nouvelle branch pour faire des modifs
    - `git rm --cached [nom_fichier]` : enlever un fichier après git add et avant git commit
- bonnes pratiques :
	- garder une version master en état de focntionnement
	- avoir une branch dev : plus ou en moins en état de marche
	- avoir une troisième branche = une fonctionnalité ou un bug
par exemple :
- je commence un développement
- parallèlement, on me signale un bug

- pour gérer un conflit sur une fusion : modifier directement dans fichier

# cours 3
- un serveur distant = un remote
    - `git remote` : donne liste des serveurs
        -  convention : pour le premier serveur : origin ; pour le second : upstream
    - `git push` : pour envoyer données vers serveur
    - `git pull` : pour synchroniser un autre ordinateur depuis serveur


- on ajoute un second serveur distant à un repo
fpichenot@debpic:~/enc/cours/S1_dev/cours-git$ git remote add upstream https://github.com/ragbxtest/courstest.git
fpichenot@debpic:~/enc/cours/S1_dev/cours-git$ git push -u upstream master

- on change le nom du serveur de repo
git remote set-url https://github.com/ragbxtest/courstest.git

