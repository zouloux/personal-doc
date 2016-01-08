# Terminal



##### Vider le cache DNS
- `sudo dscacheutil -flushcache`
- `sudo killall -HUP mDNSResponder`

##### Copier / Coller dans la console
- Copier `pbcopy`
- Coller `pbpaste`
- Copier le contenu d'un fichier dans le presse papier `cat coucou.txt | pbcopy`
- Coller le contenu du presse papier dans un fichier `pbpaste > coucou.txt`

##### La commande `sed` pour travailler en flux de lignes
- [Cours ici](https://openclassrooms.com/courses/la-commande-sed)

##### La commande `tr` pour convertir des chaînes de caractère
- [Cours ici](http://www.linux-france.org/article/memo/node10.html)