# Slide 2

Faire lire la chose aux élèves

Les issues, appelées aussi ticket ou bug, représentent un espace de conversation entre les développeur-se-s d'un projet, voire entre celles-ci et les utilisateurs-rices du projet. Elles permettent :

- d'établir des missions,
- relever des bugs qui seraient apparus,
- répondre à des questions quant à une base de code

L'utilisation d'issues, même dans le cadre de développement solitaire, permet de réaliser une liste de choses à faire, de consigner des problèmes ou des idées d'améliorations. Très rapidement dans le cadre de développement logiciel, il est important d'ouvrir ces tickets afin de suivre sa progression. Par ailleurs, il y a un côté rassurant au fait de fermer des tickets et de les marquer comme résolus.

Lors de l'ouverture d'une issue sur github lié à un bug, il y a un certain nombre de bonnes pratiques qu'il faut essayer de suivre :

- Il faut essayer au mieux d'expliquer le contexte du bug, voire de donner un maximum d'information pour reproduire le bug étape par étape.
- Si le bug concerne des fichiers que vous possédez, il faut fournir le fichier. Si une partie du fichier seulement fait boguer le logiciel et si il le bug se produit en supprimant le reste, il est important de supprimer le reste afin de ne pas conduire les développeuses-rs à avoir à comprendre l'intégralité du fichier
- quoiqu'il arrive, on décrit au mieux le problème, même pour soi-même. Il faut garder en tête le concept de "moi du futur", cette sorte d'alter ego qui ne comprendra pas ce que vous avez aujourd'hui noté dans un ticket et qui se mettra plus que vraisemblablement en colère.

# Slide 3

Lorsque l'on demande une nouveauté, par exemple un nouvel ensemble de données ou une nouvelle fonctionnalité, il faut décrire le plus précisément possible ce que l'on veut, afin de pouvoir s'en occuper ultérieurement ou transférer cette charge à un-e collègue.

On peut aussi ouvrir un ticket dans le cadre d'une discussion, généralement une question à propos d'un morceau de code qui n'est pas très compréhensible. Il faut bien sûr rester cordial, que cela soit en tant qu'interlocuteur-rice du côté développement, ou en tant que discutant-e.

# Slide 4

Sur github, les tickets peuvent être attribués par les développeur-se-s des repository. Cela veut dire qu'il est possible d'assigner la gestion d'un ticket à une ou plusieurs personnes. On peut bien sûr s'autoattribuer une issue. Il faut faire attention à la violence symbolique que peut représenter une telle action : bien qu'il soit important de partager la charge, il est recommandé d'être sûr d'avoir communiqué sur les responsabilités de chacun-e lors des premières discussions avant d'assigner quelqu'un-e à une mission.

Les issues peuvent être catégorisées en labels. Une série existe par défaut et contient par exemple "bug", "enhancement", "question", etc. Leur utilisation est recommandée pour pouvoir facilement, visuellement, trier l'ensemble des issues.

Enfin, afin de faciliter la planification de votre travail, github fournit deux autres outils : les projets et les milestones. Les deux permettent de regrouper des issues, avec pour les milestones une focalisation certaine sur des dates limites de rendu.

# Slide 5

Voici la page des issues du code du front-end de Github. Je permets de noter ici que frontend est à comprendre dans le sens de "qui est vu par le client" et non comme pour les frameworks "qui est compilé par le client".

Essayons de voir rapidement ce qui se passe ici :
- déjà, on voit rapidement l'importance des labels : on compte 5 bugs.
- Toutes les issues ont été ouvertes par la même personne, on est face à un développement plus que solitaire ici. Par ailleurs, on remarque que la dernière issue ouverte est la n°951.
- beaucoup de problèmes ou d'améliorations concernent l'interface pour les administrateurs-rices.
- un problème est marqué comme ayant une haute priorité (en bas 879).
- un est marqué comme tech-deb, raccourci pour technical debt.

Le terme "technical debt" est dérivé de la méthode agile de management et de développement. Il s'agit d'un problème avec lequel on peut vivre, mais qui coûte, d'où le nom de dette. Je vous laisse à ce sujet lire les pages anglaise et française de Wikipédia à ce sujet.

# Slide 6

On est ici devant un repository de textes et de métadonnées sur ces textes. Il s'agit du corpus original latin du Perseus project, en cours de conversion vers CapiTainS.

Que pouvez-vous dire sur ce repository ?

- Ensemble d'identifiants
- Moins d'utilisation des labels
- Plusieurs utilisateurs (3)
- Grandes discussions (jusque 22)

# Slide 7

Discuter de l'issue avec les étudiant-e-s

Que pouvez-vous me dire sur cette issue ?

# Slide 8

Pourquoi cette issue est-elle mauvaise ?

Concernait des identifiants doublons sur certains fichiers. Mais aucun listé correctement.

# Slide 9


- Les données de https://github.com/chartes/elec vous intéressent. Mais vous aimeriez changer une partie des données : ne conserver que les testaments de poilu et supprimer les éléments qui ne correspondent pas à vos besoins.
- À ce moment-là, on va réaliser un fork du repository sur son propre compte. On obtient ainsi les droits d'écritures sur le repository tout en gardant l'ensemble de son historique. On travaille sur ce repository ensuite localement, comme on travaillerait avec n'importe quel repository.
- Si l'on fait des modifications sur un dépôt d'une autre personne, il est plus respectueux de faire un fork que de télécharger et de créer un nouveau dépôt.

# Slide 10

La contribution et le travail en équipe sont au centre de l'utilisation d'outils tels que github. Si d'une part il est important de protéger son code en écriture et d'empêcher ainsi les externes d'écrire sur votre repository, il est aussi important de pouvoir recevoir des propositions de changement.

Ces propositions de changement sur github sont appelées des *pull requests*. Un-e utilisateur-rice produit des commits sur un fork, pour corriger des coquilles ou améliorer la documentation par exemple, et ouvre un ticket *pull request*. Les gestionnaires du repository ensuite entrent dans une discussion ouverte avec cette personne jusqu'à fusion (*merge*) de cette pull request ou son refus. 


**À voir plus tard ?** Il existe par ailleurs trois types de merge : les merge normaux, les squash et les rebases.

# Slide 11

Lire la proposition

# Slide 12

Le faire soi-même puis laisser les étudiantes le faire