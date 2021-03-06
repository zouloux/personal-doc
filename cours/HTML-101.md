# HTML 101

Cours et rappels de base pour l'écriture de code HTML.
Ceci est un support de cours, sensé être **accompagné d'une micro formation**.
Il est à destination des personnes débutantes dans l'écriture HTML et leur permettra de faire de la saisie ou des traductions avancées.

## La structure

### I) Les balises

- Ceci est une balise ouverte : `<coucou>`

- Toute balise ouverte est suivie par sa copine balise fermée : `</coucou>`

- Parfois les balises sont auto-fermées comme `<coucou />`, elle n'ont pas besoin de copine fermante car elles sont l'ouverture **et** la fermeture.

- Chaque balise ouverte puis fermée, peut contenir d'autres balises, du texte ou les deux :

```html
<coucou> <salut /> je suis un texte </coucou>
```

- Les balises peuvent aussi être imbriquées :

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
Les balises nous permettent de former une **structure arborescente**.

En HTML nous appelons le résultat de cette structure, la [DOM](https://fr.wikipedia.org/wiki/Document_Object_Model).

---
### II) Les attributs

Les attributs nous permettent de configurer / spécifier nos balises.

- Ceci est une balise avec un attribut :
```html
<coucou je-suis-un-attribut />
```

- Parfois les attributs ont des valeurs :
```html
<coucou je-suis-un-attribut="avec une valeur" />
```

---
### III) Les caractères HTML

Les caractères HTML permettent d'insérer des caractères réservés à la structure, dans le contenu de notre page.
Par exemple, le caractère **"<"** est déjà réservé pour ouvrir et fermer les balises.

Tous les caractères HTML commencent par **"&"** et terminent par **";"**. Avec entre les deux un code définissant le caractère.
Parfois c'est un raccourci mnémotechnique (pour **"<"** c'est "**L**ess **T**han", ce qui nous donne **"&amp;lt;"**).
Pour **">"** c'est "**G**reater **T**han" qui nous donne donc **"&amp;gt;"**

La liste des caractères HTML se trouve [ici](http://www.commentcamarche.net/contents/489-caracteres-speciaux-html)

Les caractères spéciaux tels que **"é à ç"** ou même **"€"** sont accéptés en HTML5. Il est quand même conseillé de les encoder, mais ça peut dépendre des règles d'intégrations du projet.

**Tips** : Pour encoder les caractères dans *sublime texte*, il suffit de faire `ctrl + shit + p` puis `Encode Special Chars`

Exemple (notez le "û") :
```html
<p> 5 &amp;gt; 12 est faux ! Le litre de lait coûte 5 &amp;euro; </p>
```

Nous donnera :
```
5 > 12 est faux ! Le litre de lait coûte 5 €
```

---
### IV) Les balises HTML

En HTML nous avons donc un **dictionnaire de balise** pour exprimer une sémantique, et donc ajouter du sens à notre structure.
Cette structure de balises prédéfinies seront interprêtées par notre navigateur pour être affichées à l'écran.

#### Les balises de structure, dites "contenantes" :

`<div>` : Cette balise permet de faire un nouveau conteneur. Elle sert surtout aux intégrateur pour imbriquer les éléments.

`<p>` : Créé un nouveau paragraphe. Un paragraphe peut avoir une indentation, une lettrine, etc...

**Attention, cas particulier** : pour aller à la ligne en HTML, les sauts de lignes classiques sont ignorés (ou presque).
Du coup nous avons la balise **`<br>`** qui force un saut de ligne. C'est une balise ouverte mais qui **n'a pas besoin d'être fermée** !
Elle existe donc sous deux formes, ouverte mais jamais fermée **`<br>`** et auto-fermante **`<br/>`**, **les deux étant valides en HTML5.**

Elle s'utilise donc comme suit :

```html
<p>Je suis un paragraphe <br> et je suis à la ligne.</p>
```


#### Les balises titres, par importance :

- `<h1>` : Premier niveau de titre, le plus important
- `<h2>`
- ...
- `<h6>` : Dernier niveau de titre, le moins important


#### Les listes

- `<ul>` : Liste non ordonnée, peut afficher des points ou des tirets.
- `<ol>` : Liste ordonnée, afficher chaque point précédé de son numéro.

Ces listes ne peuvent contenir que des éléments `<li>` (élément de liste), qui eux même peuvent contenir d'autres éléments HTML (c'est une balise contenante).

Ce qui nous donne :
```html
<ul>
	<li>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
	</li>
	<li>
		Je suis le second élément de liste...
	</li>
</ul>
```

Plus d'informations sur les listes [ici](http://www.alsacreations.com/astuce/lire/66-mes-listes-ul-ol-ou-listes-imbriques-ne-sont-pas-valides.html)


#### Les liens

Pour créer un lien, il suffit d'utiliser la balise `<a>`, avec les bons attributs :

```html
<a href="http://www.lien-vers-ma-page.com">Texte du lien</a>
```

Pour forcer le lien à être ouvert dans une nouvelle page :

```html
<a href="http://www.lien-vers-ma-page.com" target="_blank">Texte du lien</a>
```

**Attention**, il faut bien mettre **`http://`** devant le lien pour ouvrir un site externe (donc qui n'est pas sur le même nom de domaine).
Pour cibler les pages du même nom de domaine, il est conseillé de partir du nom de domaine, en commençant par `/`
Comme suit :
```html
<a href="/dossier/page.html"> Lien vers la page www.mondomain.com/dossier/page.html </a>
```

Pour ouvrir un nouvel e-mail, il faut préfixer par `mailto:` ce qui nous donne :

```html
<a href="mailto:jean-jacques@gmail.com"> Envoyer un e-mail du futur à Jean Jacques </a>
```
