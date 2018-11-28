Développer et gérer un projet : les bonnes pratiques 
===

### Quelles bonnes pratiques

Si le développement et la gestion d'un projet vous semblent être l'apanage des futures ingénieures, conservatrices et développeuses qui sont là, sachez bien qu'aujourd'hui, on demande aux chercheurs et chercheuses de savoir gérer leur projet. Plus encore, savoir gérer un projet, y compris personnel, est primordial si vous souhaitez être assuré de sa fonctionnalité et de son expansion dans un futur plus ou moins proche.

Bien sûr, je vous renvoie à la [conférence de Bridget Almas](https://www.youtube.com/watch?v=bhlBwnN_Pf4) d'octobre dernier qui est disponible sur YouTube sur la chaîne de l'École.

Il n'y a pas grand-chose à dire à part lister ces bonnes pratiques. Pour chacune de ces bonnes pratiques, je vous laisserai poser des questions le cas échéant.

### Former et se former

Que vous soyez développeuse, ingénieure, conservatrice, etc, la formation technique, si vous persistez dans le numérique, est primordial. Les technologies changent vite, très vite. Je ne parle pas d'apprendre de nouveaux langages toutes les semaines, je n'en connais moi-même que 5 ou 6 et n'en utilisent qu'un ou deux quotidiennement. 

Mais se former aux évolutions techniques, faire de la veille sur ce qui peut changer, en utilisant twitter ou reddit par exemple, est primordial dans nos métiers.

### Ne jamais travailler sur master

Que l'on soit seul ou à plusieurs, travailler sur le master signifie que votre changement sera plus ou moins définitif, sauf à passer un mauvais quart d'heure à produire une régression dans les commits.

Évitez donc.

### Une issue = une branche = une pull request

Bien que cela ne soit pas toujours aussi simple et aussi bien découpé, il faut au maximum essayer de respecter cela. On ne sait jamais quelle réception aura sa pull request, et il est plus que probable quand on essaie de corriger trop de choses à la fois que certaines ne soient pas acceptées par vos collègues.

Autres choses : on ne fusionne pas sa propre pull request (sauf quand on travaille seul bien sûr) et quoiqu'il arrive, on attend toujours les résultats de l'intégration continue.

### Une fonction : + d'un test

Toute fonction codée doit être vérifiée par au moins un test. Je vous laisse vous intéresser aux principes du *coverage*, notamment en python et langage de programmation. Certains outils vous permettent en effet de vérifier, au lancement des tests, quelles lignes de codes sont exécutées et lesquelles ne le sont jamais. Cela permet de se protéger pour partie d'oublis dans les tests.

### Ne pas développer ce qui existe déjà

Il faut éviter un maximum de réinventer la roue. Cela dit, cela ne veut pas dire que ce qui existe est forcément mieux. Faites très attention à la tentation constante des CMS par exemple. Les CMS vous offrent une solution rapide, mais sont par exemple de piètres outils quand il s'agit de conservation des données.

### Améliorer, contribuer

Poser des questions, ouvrir des bugs, proposer des corrections, aider à documenter. Autant de moyens de contribuer à des projets open source. 

Je me permets de noter que dans le cadre du devoir, je vous conseille d'ouvrir des issues si des morceaux de documentations n'étaient pas clairs.

### Toujours penser à votre moi du futur

Je vous ai parlé de ce concept. Je le remets là. Si vous ouvrez un bug en disant "la page X bugue" sans plus de détails, c'est comme noté sur votre mémoire de 100 pages en couverture "faute d'orthographe" sans plus de précision. Imaginez passer 1 mois et retomber sur cette note manuscrite.

### Mettez-vous d'accord sur les bonnes pratiques

Les bonnes pratiques, certaines sont communes, certaines sont différentes. La première chose que vous devez faire dans un projet une fois le projet établi, c'est établir la liste des choses à faire et ne pas faire. Après quelques projets avec une même équipe, tout cela roulera tranquillement.

### Indenter

Écrire du code propre, indenter. Il y a deux ans, j'avais réservé 2 points sur 10 sur la propreté du code sur un devoir. Il est insupportable de lire un code qui est mal écrit. Vous n'oseriez pas rendre une réponse d'appel à projets sur des serviettes de fast food ? N'osez pas rendre du code bien espacé.

### Documenter

Documenter cela signifie :
- expliquer pourquoi vous avez écrit certaines lignes de code
- à quoi servent vos fonctions et variables
- comment installer votre logiciel ou site
- comment utiliser vos outils
- mettre des messages de commits clairs.

La documentation est certainement la chose la plus difficile à faire, car en tant que producteur et productrice, nous connaissons notre code. Je recommande ici de trouver des camarades avec qui partager vos repository et essayer de lire et critiquer la documentation de l'autre.

### Documenter

Pour finir, voici un exemple de ce qu'il ne faut pas faire : écrire en documentation quelque chose qui n'aide en rien à la compréhension.
