# Webstorm / Phpstorm

Ces commandes fonctionnent sous mac.
Multicurseur : [lien](http://blog.jetbrains.com/phpstorm/2014/03/working-with-multiple-selection-in-phpstorm-8-eap/)

##### Voir la doc rapidement
`Fn + F1`

##### Afficher le contenu d'une méthode rapidement
`CMD + Y`

##### Autocomplétion
`ctrl + space`

##### Voir la déclaration dans une mini popup (pratique pour les images)
`alt + space`

##### Options sur la déclaration (importer la ref par exemple)
`alt + enter`

##### Paramètres
`CMD + P`

##### Insérer dans un tag
`CMD + alt + T`

##### Insérer un commentaire (sur mac en français y'a un bug)
- `CMD + shift + [+]` commentaire banner
- `CMD + [+]` commentaire slash

##### Changer de casse
- `CMD + shift + U`

##### Auto-formater la séléction, le fichier ou le dossier
- `CMD + alt + L`

##### Ouvrir les préférences sans plantage
- `CMD + alt + ';'`

##### Mini popup avec les membres du fichier
- `CMD + fn + F12`

##### Changer de fenêtre de projet ouvert
- `CMD + @`


##### Sélectioner plusieurs lignes en mode multi curseur (pratique si les lignes n'ont pas d'élément en commun)
- `[alt] + [drag and drop]`

## Tips

Désactiver la navigation bar (view > navigation bar) et l'invoquer à la demande avec `CMD + ⬆`

`CMD + N` ouvre le créateur rapide de fichier, en contexte avec la position de la navigation bar

`CMD + E` derniers fichiers
`SHIFT + CMD + E` derniers fichiers édités

`CTRL + TAB` popin switcher
`ALT + TAB` changer de section de fichier



## Optimisation de PHPStorm / WebStorm

Help > Edit Custom VM options

Ajouter ça :
```
-Dawt.useSystemAAFontSettings=lcd
-Dawt.java2d.opengl=true
```

Modifier ça :
```
-Xms512m
-Xmx2048m
```

