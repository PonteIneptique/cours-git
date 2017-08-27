% Introduction à Git : les serveurs
% Thibault Clérice
% Octobre X, 2017

# 1. Ce qu'il manque jusque là

- Capacité de sauvegarde distance : dois-je faire une copie dans ma dropbox ?
- Capacité de travailler en équipe : dois-je faire un git dans ma dropbox et partager le dossier ?
- etc.

---

# 2. Git et ses services en ligne

Des entreprises et des structures du publique fournissent des serveurs centralisés pour git :

- [Github](https://github.com) qui est le plus à la mode et que nous utiliserons
- [Gitlab](https://gitlab.com) qui est le concurrent le plus sérieux de github aujourd'hui
- [Bitbucket](https://bitbucket.org)
- [Forge](https://forge.git.cnrs.fr) pour le CNRS

---

# 3. Un dessin vaut mieux qu'une explication

---

# 4. Le vocabulaire des serveurs distants pour Git

- *Remote* : Serveur distant permettant la synchronisation manuelle de votre dépôt
- *origin* : Nom du serveur principal, un peu comme master est la branche principale. Pour l'instant, nos serveurs n'en ont pas
- *push* : Envoyez les modifications effectuées sur un serveur donné.
- *pull* : Retrouvez les informations depuis un serveur donné
- *clone* : Copie sur votre PC d'un dépôt trouvé en ligne
- *fork* : Dérivé d'un dépôt d'un-e autre développeur-se
- *upstream* : Par convention, nom d'un second serveur, généralement le serveur source du *fork*

---

# 5. Créons un compte Github 

- Github a des défauts (pas open-source par exemple) mais reste l'outil le plus moderne pour de la gestion de code versionné en équipe
- Github propose un environnement complet
	- Gestion d'équipe
	- Connections à d'autres applications
	- Gestion de ticket
	- Gestion de fusion de branches
	- etc.

---

# 6. Ajoutons nos notes de cours en ligne

1. Créer un repo "notes-de-cours"
	- **/!\ Surtout ne pas cocher initialiser le repository**
		- Pourquoi ?
2. Ajouter ce serveur à votre dépôt local
	- `git remote add origin [adresse du serveur]`
3. Pour le premier push de synchronisation
	- `git push -u origin master`
		- Git, envoie ma branche actuelle sur la branche master du serveur origin. (-u:) Cette branche correspondra à partir de maintenant à celle sur mon dépôt local
	- `git push` sera suffisant (pour la branche master !) à partir de maintenant