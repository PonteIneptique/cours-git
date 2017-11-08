# Questions sur le dernier cour ?

# Questions sur l'article de Médiévales ?

# Faire un rappel du vocabulaire

- Je crée un repository, je fais :
- Quand j'enregistre un fichier, git 
- Je veux enregistrer un fichier, je fais (2 commandes):
- Quand j'ajoute un fichier à un futur commit, il passe en phase :
- Pour créer une branche, je fais :
- Quand je modifie un fichier image, git n'enregistre pas le nouveau fichier : Vrai / Faux
- Quand je modifie un fichier image, git ne comprend pas les différences entre les deux versions : Vrai / Faux

# Par rapport aux branches 

![Exercice](./notes-contextuelles/exercice-branches.png)

Question / Exemple de réponse :

- Je veux ajouter le texte Pline après avoir ajouté Martial, que dois-je faire sous git ?
    - `git checkout master`
    - `git branch ajout-pline`
    - `git checkout ajout-pline`
    - `git add pline.xml`
    - `git commit -m "Ajout de pline"`
    - `git checkout master`
    - `git merge ajout-pline`

- Je veux ajouter le texte de Pline, mais avant de fusionner, je veux corriger une coquille
- J'ai ajouté Pline, je veux ajouter Cicéron.
- Je veux corriger une coquille sur Martial après avoir fusionné Cicéron
- Que dois-je faire pour avoir tous les textes dans 1.0.0, sachant que 
    - toutes les branches existent (on est parti de master-init à chaque fois)
    - martial a été ajouté
    - quel est l'ordre le moins dangereux à votre avis ?