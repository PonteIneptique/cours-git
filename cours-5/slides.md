% Développer en ligne et en équipe: intégration continue et tests
% Thibault Clérice
% Octobre X, 2017

# 1. Question 

Quand on développe avec une équipe, quels risques encoure-t-on ?

---

# 2. Réponses

- Quand on développe avec une équipe, quels risques encoure-t-on ?
	- Introduction d'un bug par la modification d'un équipier
	- Modification du code qui passe inapercue (Risque de duplication des efforts)
	- Erreur dans la manière de modifier le bug

---

# 3. Solutions

- Les *Pulls requests* règlent le problème du code qui passe inaperçu ou
- Les outils d'intégration continue règle le problème des modifications et de l'introduction de bug

---

# 4. Principe

1. Vérifier à chaque modification que celle-ci n'entraine pas de bug ou de régression
2. Vérification décentralisée et disponible pour l'ensemble de l'équipe
	- Contrairement à une batterie de test local, tout le monde peut voir les résultats
3. Notification de l'ensemble de l'équipe en cas de problème ou de réussite
4. Un bug trouvé le plus tôt possible est un bug qui ne coûte pas cher.

![https://insights.sei.cmu.edu/devops/2015/01/continuous-integration-in-devops-1.html](cours-5/images/ci.jpg){width=80%}

---

# 5. Les tests

- Tous les langages de programmation avancés ont des logiciels de tests : php, python, java, etc.
- On distingue plusieurs types de test :
	- Les tests unitaires : on vérifie qu'un morceau de code particulier a un résultat particulier. Exemple : conjuguer(chanter, je, présent, indicatif): je chante
	- Les tests d'intégrations : on vérifie qu'un ensemble de blocs fonctionne bien ensemble. Exemple : si je clique sur le bouton conjuguer, la fonction conjuger est appelée et je vois le résultat
	- etc.
- Dans certains cas, on peut parler de TDD : Test Driven Development. 
	- Le principe : On écrit d'abord un test avant d'écrire la fonction.
	- Écrire le test veut dire que l'on est sûr de ce que l'on veut obtenir. C'est un moyen de se rendre compte de la limite de la compréhension de notre code ou de notre mission.
- Écrire des tests représente une augmentation du temps de travail importante au départ. Cependant, un code testé vous signale tout de suite quand un changement opéré produit un problème. C'est une meilleure manière de découvrir un problème que d'avoir à cliquer sur tous les liens de toutes les pages de votre site.