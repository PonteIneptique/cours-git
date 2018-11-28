# Slide 1

Quand on développe avec une équipe, quels risques encoure-t-on ?

# Slide 2

Les risques principaux dans la collaboration sont:
- l'introduction d'un bug par un-e collègue
- l'introduction d'une régression, c'est à dire un retour en arrière sur certaines portions de code qui peuvent entraîner un bug
- la multiplication des efforts : plusieurs personnes tentent de régler le même problème
- la mauvaise gestion ou correction d'un bug

# Slide 3

Les solutions sont bien évidemment les pull requests : même dans une situation de travail sur un seul repository à plusieurs, il est important de ne pas faire de merge locales sur la master, mais de proposer ces changements à vos collègues à travers l'usage de pulls requests internes.

Une autre solution complémentaire est l'usage d'outils d'intégration continue qui surveille et évalue les modifications de code.

# Slide 4

L'intégration continue sert entre autres à lancer une batterie de tests développés par l'équipe de développement. Ces tests visent à vérifier le bon fonctionnement d'une base de code. Il est recommandé d'écrire un ensemble de tests génériques pour des applications, puis, lorsque des utilisations font émerger des bugs particuliers, d'écrire de nouveaux tests qui permettent de vérifier qu'un bug ne se reproduira pas plus tard.

Exemple : J'ai une application web qui fonctionne très bien, avec une batterie de tests qui vérifie que tout fonctionne. Cette application web permet d'afficher des fichiers TEI en html. Une utilisatrice se rend compte du non-affichage des titres imbriqués dans des divs de deuxième niveau. En corrigeant le bug, j'écris un nouveau test qui vérifiera que l'on n’introduira pas de régression plus tard.

Par ailleurs, l'intégration continue permet aussi de vérifier de manière décentralisée et ouverte (au moins aux collègues) que ces tests fonctionnent bien. Il est important de mettre à disposition ces résultats sur des environnements neutres. Cela permet d'éviter des situations où un-e collègue lancerait ses tests incorrectement sur sa machine.

Généralement, ces outils notifient l'ensemble de l'équipe et commentent les pull requests avec un statut qui informe du succès ou de l'échec des tests.

L'un des principes phares de l'intégration continue est qu'un bug trouvé tôt est un bug qui coûte moins cher. 

Enfin, il arrive que, pour certains logiciels ou corpus, l'intégration continue intègre une partie de compilation ou d'export. Le service sera alors responsable de la transformation des ressources à chaque exécution.

# Slide 5

Regarder l'image

# Slide 6

Les tests sont des éléments essentiels du développement informatique. Ils permettent de s'assurer de la solidité de votre application.

On distingue plusieurs types de test : 
- les tests dits unitaires : on vérifie qu'un morceau de code particulier a un résultat correct. On exécute ces morceaux de codes hors contexte. Par exemple, si j'ai deux fonctions, une pour afficher la page web et l'autre pour importer des données, je vais tester chacune de ces fonctions individuellement.
- les tests d'intégrations : on vérifie qu'un ensemble de blocs fonctionnent bien ensemble. Généralement, en développement web, cela se traduit par la simulation d'action sur une page web en vérifiant le résultat.
- etc.

Cela dit, écrire des tests représente une très grande augmentation du temps de travail. Je compte environ une heure de test et de documentation minimum par heure de programmation. Mais un code testé vous signale tout de suite si un changement opéré sur votre application provoque des bugs, et où. Dans le cadre d'applications importantes de valorisation, il peut être extrêmement important d'utiliser de telles ressources.

# Slide 7

Dans certains cas, on peut parler de Test Driven Development, ou développement à partir de tests.

L'objectif n'est non pas d'écrire des tests a posteriori, mais de les écrire avant d'écrire son propre code. Cela signifie que :
- votre architecture est claire, pensée et solide
- vous connaissez les utilisations de chacun de vos blocs

Pour prendre un exemple, lorsque l'on écrit son XML en utilisant un schéma RelaxNG ou équivalent, on a écrit sa batterie de tests en amont puisque le schéma a été prévu d'abord.

Prendre l'image, essayer de montrer la différence avec du TDD.

# Slide 8

L'outil que nous utiliserons dans ce cours pour l'intégration continue sera Travis. C'est un outil qui a l'avantage d'être gratuit pour les logiciels open source, documenté et bien intégré avec github. En fonction d'un fichier de paramètres, il lancera l'ensemble des scripts fournis.

L'un des intérêts de le connecter à github est de fournir un compte-rendu directement sur les pulls requests. Regardons plutôt l'exemple qui suit :

# Slide 9

# Slide 10

Prendre le fichier ligne par ligne, essayez de leur faire comprendre.

Si bonne compréhension, voire avec le fichier complet https://github.com/PerseusDL/canonical-latinLit/blob/master/.travis.yml