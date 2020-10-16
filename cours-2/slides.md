---
marp: true
---


# 1. Les branches

- Les branches sont comme des "Sauvegarder sous..." pour l'ensemble du dépôt
    - Sauf qu'on peut les rejoindre/fusionner plus facilement !
- La branche par défaut s'appelle master
    - Dans `git status`, la branche `master` doit être affichée dans votre dossier de notes
- Offre la possibilité de travailler sur différents problèmes en parallèle. Possibilité de travailler sur des problèmes différents en même temps et de changer de tâche rapidement.
    - Une branche Master
    - Une branche bug 1
    - Une branche bug 2 parce que celui-ci est plus pressé
    - etc...

---

# 2. Les branches : vocabulaire et commandes

- **Créer une branche** : `git branch [nom de la branche]`
- **Se déplacer dans une branche** : `git checkout [nom de la branche]`
- **Se déplacer et créer une branche en même temps** : `git checkout -b [nom de la branche]`
- **Fusionner une branche** : `git merge [branche dont on veut les modifications]` (on fusionne toujours depuis la branche réceptrice, celle sur laquelle on veut continuer de travailler ensuite)

---

# 3. Branches

![h:600px](images/branches.png)

---

# 4. Conflits d'historique

1. Copier le fichier xml  [https://ponteineptique.github.io/cours-git/cours-2/exemple.xml](https://ponteineptique.github.io/cours-git/cours-2/exemple.xml)
2. Enregistrer ce changement dans git
3. Changer de branche pour `changement-texte`
4. Remplir titre et auteur avec le titre de votre livre préféré et auteur préféré
5. Ajouter une description dans le document TEI
2. Enregistrer ce changement dans git

---

# 5.  Conflits d'historique : le professeur change d'avis 

1. Changer de branche pour `master`
2. Changer le titre et l'auteur pour "Epigrammes" et "Martial"
3. Enregistrer le changement
4. Fusionner avec la branche changement de texte
    1. Alors ?