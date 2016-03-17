# HTML 101

Cours et rappels de base pour l'écriture de code HTML.
Ceci est un support de cours, sensé être accompagné d'une micro formation.
Il est à destination des personnes débutantes dans l'écriture HTML.
Il peut être appris aux chefs de projets devant toucher à la traduction et la saisie de données.

## La structure

### I) Les balises

1. Ceci est une balise ouverte -> `<coucou>`

2. Toute balise ouverte est suivie par sa copine balise fermée -> `</coucou>`

3. Parfois les balises sont autofermées comme `<coucou />`, elle n'ont pas besoin de copine fermante car elles sont l'ouverture ET la fermeture.

4. Chaque balise ouverte puis fermée, peut contenir d'autres balises, du texte ou les deux :

```html
<coucou> <salut /> je suis un texte </coucou>
```

5. Les balises peuvent aussi être imbriquées :

```html
<coucou>
	<salut>
		<super />
		je suis un texte
		<balise> un autre texte </balise>
	</salut> 
</coucou>
```

#### Conclusion :
Les balises nous permettent de former une structure arborescente.

En HTML nous appelons le résultat de cette structure, la [DOM](https://fr.wikipedia.org/wiki/Document_Object_Model).

---
### II) Les attributs

Les attributs nous permettent de configurer / spécifier nos balises.

1. Ceci est une balise avec un attribut :
```html
<coucou je-suis-un-attribut />
```

2. Parfois les attributs ont des valeurs :
```html
<coucou je-suis-un-attribut="avec une valeur" />
```

---
### III) Les caractères HTML

Les caractères HTMLs permettent d'insérer des caractères réservés à la structure, dans le contenu de notre page.
Par exemple, le caractère **"<"** est déjà réservé pour ouvrir et fermer les balises.

Tous les caractères HTML commencent par **"&"** et terminent par **";"**. Avec entre les deux un code définissant le caractère.
Parfois c'est un raccourci mnémotechnique (pour **"<"** c'est **"Less Than"**, ce qui nous donne **"&amp;lt;"**)
Pour **">"** ça nous donne Greater Than donc **"&amp;gt;"**

La liste des caractères HTML se trouve [ici](http://www.commentcamarche.net/contents/489-caracteres-speciaux-html)

---
### IV) Les balises HTML

En HTML nous avons donc un dictionnaire de balise pour exprimer une sémantique, et donc ajouter du sens à notre structure.

#### Les balises de structure, dites "contenantes" :

<div> : Cette balise permet de faire un nouveau conteneur. Rien de particulier.

<p> : Créé un nouveau paragraphe. Un paragraphe peut avoir une indentation, une lettrine, etc...

Cas particulier, pour aller à la ligne en HTML, les sauts de lignes classiques sont ignorés (ou presque).
Du coup nous avons la balise <br> qui force un saut de ligne. Mais attention ! C'est une balise ouverte mais qui n'a pas déquivalent fermé !

Elle s'utilise donc comme suit :

<p>Je suis un paragraphe <br> et je suis à la ligne.</p>


#### Les balises titres, par importance :

<h1> : Premier niveau de titre, le plus important
<h2>
...
<h6> : Dernier niveau de titre, le moins important


#### Les listes

<ul> : Liste non ordonnée, peut afficher des points ou des tirets.
<ol> : Liste ordonnée, afficher chaque point précédé de son numéro.

Ces listes ne peuvent contenir que des éléments <li> (élément de liste),
qui eux même peuvent contenir d'autres éléments HTML (c'est une balise contenante).

Ce qui nous donne
<ul>
	<li>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
	</li>
	<li>
		Je suis le second élément de liste...
	</li>
</ul>

Cours : http://www.alsacreations.com/astuce/lire/66-mes-listes-ul-ol-ou-listes-imbriques-ne-sont-pas-valides.html


#### Les liens

Pour créer un lien, il suffit d'utiliser la balise <a>, avec les bons attributs :

<a href="http://www.lien-vers-ma-page.com">Texte du lien</a>

Pour forcer le lien à être ouvert dans une nouvelle page :

<a href="http://www.lien-vers-ma-page.com" target="_blank">Texte du lien</a>


Attention, il faut bien mettre "http://" devant le lien pour ouvrir un site externe (donc pas une page interne au site)

Pour ouvrir un nouvel e-mail, il faut préfixer par "mailto:" ce qui nous donne :

<a href="mailto:jean-jacques@gmail.com">Envoyer un e-mail du futur à Jean Jacques</a>





## Convertir un document DOC en HTML :

Outil en ligne de conversion doc vers HTML : https://word2cleanhtml.com/cleanit

Marche mieux sur firefox.

Options à cocher :

- Remove empty paragraphs
- Convert <b> to <strong>, <i> to <em>
- Replace non-ascii with HTML entities
- Replace smart quotes with ascii equivalents
- Indent with tabs, not spaces 
