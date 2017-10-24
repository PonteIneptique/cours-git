% CapiTainS
% Thibault Clérice
% Octobre X, 2017

# 1. La norme

- CapiTainS a pour objectif de rendre un texte disponible à la citation à travers une série de petites règles que doivent suivre les documents
- Suite d'outils et une norme
- Source du cours : https://github.com/Capitains/DH2016

---

# 2. Les identifiants

![Norme basée sur identifiant CTS](cours-7/images/URN.png)

---

# 3. La structure des dossiers

- Un dossier corpus avec un sous dossier data
- Un dossier avec l'identifiant du textgroup
	- et un fichier __cts__.xml pour les métadonnées
- Un dossier avec l'identifiant work
	- et un fichier __cts__.xml pour les métadonnées
	- et les fichiers d'éditions, de traductions et de commentaire

![Structure](cours-7/images/dossiers.png)

---

# 4. Métadonnées du textgroup

```xml
<textgroup xmlns="http://chs.harvard.edu/xmlns/cts" urn="urn:cts:froLit:jns915">
	<groupname xml:lang="fre">Wauchier de Denain</groupname>
</textgroup> 
```
---

# 5. Métadonnées du work et de l'édition

https://en.wikipedia.org/wiki/ISO_639:f

```xml
<?xml version="1.0" encoding="UTF-8"?>
<work xmlns="http://chs.harvard.edu/xmlns/cts" groupUrn="urn:cts:froLit:jns915" urn="urn:cts:froLit:jns915.jns1856" xml:lang="fro">
    <title xml:lang="fre">Vie de Saint Martin</title>
    <edition workUrn="urn:cts:froLit:jns915.jns1856" urn="urn:cts:froLit:jns915.jns1856.ciham-fro1" xml:lang="fro">
        <label xml:lang="fre">Vie de Saint Martin</label>
        <description xml:lang="fre">Édition du CIHAM basé sur le manuscrit de la BNF FR411 par Ariane Pinche</description>
    </edition>
</work>
```

---

# 6. Un essai de groupe

---

# 7. Tester

- Installer HookTest : `sudo pip3 install HookTest`
- Dans le dossier du corpus, ouvrir un terminal et lancer `hooktest --console table --scheme tei --verbose 10 .`

---

# 8. Le fichier texte TEI : l'identifiant

- On mets l'identifiant du texte dans l'attribut @n de 
	- `/TEI/text/body` pour de la TEI normale
	- `TEI/text/body/div[@type="edition" or @type="translation" or @type="commentary"]` pour de l'epidoc
- On met sur ce même tag l'attribut xml:lang avec le code en trois caractères

---

# 9. Le fichier texte TEI : l'identification des passages

```xml
<refsDecl n="CTS">
  <cRefPattern 
      n="vers" matchPattern="(\w+).(\w+)"
      replacementPattern="#xpath(/tei:TEI/tei:text/tei:body/tei:div/tei:div[@n='$1']/tei:l[@n='$2'])">
      <p>Ce pointeur extrait les vers des poèmes</p>
  </cRefPattern>
  <cRefPattern 
      n="poeme" matchPattern="(\w+)"
      replacementPattern="#xpath(/tei:TEI/tei:text/tei:body/tei:div/tei:div[@n='$1'])">
      <p>Ce pointeur extrait les poèmes</p>
  </cRefPattern>
</refsDecl>
```

---

# Exemple 

- Source : http://atilf.atilf.fr/gsouvay/dect/download/Perceval.xml http://www.atilf.fr/dect/