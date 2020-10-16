---
marp: true
---

<style>
section { font-size: 22pt; }
h1 { font-size: 1.6em; margin:0 0; padding:0 0; }
h2 { font-size: 1.4em; margin:0 0; padding:0 0; }
h3 { font-size: 1.2em; margin:0 0; padding:0 0; }
</style>

Le fichier .gitignore
===========

---


Git c'est bien, mais on ne veut pas toujours mettre à disposition toutes ses sources. Par exemple, le fichier qui comprend les mots de passe des bases de données, des fichiers caches ou compilés, etc.

Git fournit bien évidemment un outil pour ça: le fichier `.gitignore`. 

---

## Où le stocker

Ce fichier se nomme forcément `.gitignore` (Il commence donc par un point !). Il se trouve à la racine du dépôt par défaut mais vous pouvez spécifier plusieurs gitignore qui auront toujours un effet sur le dossier courant et ses descendants.

---

## Syntaxe 

Voici un exemple de fichier .gitignore :

```gitignore
*.txt
dossier/
dossier2/*.jpg
motdepasse.csv
```

---


| Ligne | Effet |
| ------- | ------ |
| `*.txt` | Cette ligne permettra d'ignorer tous les fichiers textes où qu'ils soient |
| `dossier/` | Cette ligne ignorera l'ensemble du contenu de `dossier` et par extension, le dossier lui-même (Git ne conserve pas les dossiers vides) |
| `dossier2/*.jpg` | Cette ligne ignorera les *.jpg dans le dossier2. Par contre, si dossier2 a des enfants (dossier2/sousdossier1) et des jpg à l'intérieur, il seront versionnés |
| `motdepasse.csv` | Cet ligne permet d'ignorer le fichier motdepasse.csv dans le dossier principal |

---

#### Aller plus loin 

- [*Ignoring Files*, Github](https://help.github.com/articles/ignoring-files/)
- [Répertoire d'exemples de gitignore répartis par langages, Github](https://github.com/github/gitignore)