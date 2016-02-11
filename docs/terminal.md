# Terminal

## ZSH

##### Oh my zsh
- Gestion des alias : [lien](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)


## Utilisateurs

##### Changer l’utilisateur :
- `chown user:group %FILE%` (par ex ‘chown zouloux:staff httpd.conf’)

##### Vérifier l’utilisateur :
- `ls -l httpd.conf`


## Fichiers / Dossier / Liens symboliques

##### Créer un lien symbolique
- `ln -s %SOURCE% %LINK%`

##### Rsync - Merge de 2 dossiers en récursif - [man](http://www.delafond.org/traducmanfr/man/man1/rsync.1.html)
- `rsync -av --exclude='.svn' --exclude='.idea' /path/to/folder/source/ /path/to/folder/destination/`
- Possibilité de tester avant en ajoutant le flag `n`


## Lancer des programmes / commandes

##### Exécuter un programme dans un nouveau shell
- `./program`

##### Exécuter un programme dans le shell actuel
- `source program.sh`


##### Changer la source d’un programme (Par exemple changer de version de php)
(Voir plus bas comment créer ce fichier `.zprofile`)

##### Ajouter une ligne au fichier `.zprofile :
- `export PATH=/usr/local/php5/bin:$PATH`

##### Puis recharger le fichier :
- `source ~/.zprofile`


## Divers

##### Copier / Coller dans la console
- Copier `pbcopy`
- Coller `pbpaste`
- Copier le contenu d'un fichier dans le presse papier `cat coucou.txt | pbcopy`
- Coller le contenu du presse papier dans un fichier `pbpaste > coucou.txt`

##### La commande `sed` pour travailler en flux de lignes
- [Cours ici](https://openclassrooms.com/courses/la-commande-sed)

##### La commande `tr` pour convertir des chaînes de caractère
- [Cours ici](http://www.linux-france.org/article/memo/node10.html)



## Créer un fichier de configuration .zprofile

Ce fichier va surcharger le fichier .profile et sera lu à chaque ouverture du shell.

##### Pour le créer :
- `touch ~/.zprofile`

- [lien 1](http://superuser.com/questions/187639/zsh-not-hitting-profile)
- [lien 2](http://stackoverflow.com/questions/10574684/where-to-place-path-variable-assertions-in-zsh)