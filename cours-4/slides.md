% Les applications et serveurs web pour git : l'exemple Github
% Thibault Clérice
% Octobre X, 2017

# 1. Github, gitlab, etc. : pourquoi ?

- Serveur distant
- Gestion d'équipe
- Gestion de bug et de tickets (Issues)
- Gestion de fusion de branche et de "review"

---

# 2. Github : les issues

Les issues peuvent correspondre à plusieurs choses :

- un bug : on donne alors un titre au bug
	- si c'est dans le cadre d'un logiciel/d'une application/d'un site, on donne la démarche pour le reproduire 
	- on pense à donner les fichiers concernés par le bug
	- on essaye de décrire au mieux le problème. Même si c'est sur notre propre dépôt
		- Sinon, on oublie le bug, on revient deux mois plus tard, on sait plus ce que c'est.
- une nouveauté : on veut une nouvelle fonctionnalité, un nouvel ensemble de données
	- on décrit correctement ce que l'on veut, de manière à pouvoir transférer la charge ou s'en occuper soi même plus tard

Les issues peuvent être attribuées à des membres du dépôt : si je travaille avec @vincentjolivet, et qu'un bug le concerne, je peux lui attribuer en tant que membre. Sinon, en voyant un bug qui me concerne, je peux me l'attribuer.

Les issues peuvent avoir des labels. Une série de label par défaut existe, mais on peut tout à fait en ajouter à ses propres dépôts.

Les issues peuvent faire l'objet de regroupement dans des projects (sans deadline), des milestones (objectifs de sortie d'une nouvelle version).

---

# 2. Github : les issues d'un repo logiciel

![Issues de github.com/EHRI/ehri-frontend](cours-4/images/ehri-issues.png)

---

# 3. Github : les issues d'un repo data

![Issues de github.com/PerseusDL/canonical-latinLit](cours-4/images/canonicallatinlit-issues.png)

---

# 4. Github : un exemple d'issue

![https://github.com/OpenGreekAndLatin/First1KGreek/issues/1548](cours-4/images/oglfirst1k-issue1548.png)