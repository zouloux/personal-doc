# Config LAMP

Problématique : Comment se configurer un LAMP tout propre sur mac ?


## Commandes utiles

##### Démarrer apache
- `sudo apachectl start`

##### Arrêter apache
- `sudo apachectl stop`

##### Redémarrer apache
- `sudo apachectl -k restart`



## Configuration Apache

- Tuto : [lien](http://getgrav.org/blog/mac-os-x-apache-setup-multiple-php-versions)

##### Où se trouve le fichier conf d'apache :
- `/etc/apache2/httpd.conf`

##### A faire la première fois dans la conf apache :
- Changer le `documentRoot`
- Modifier `AllowOverride All` pour ce dossier
- Ajouter `Indexes` aux options -> `Options FollowSymLinks Multiviews Indexes`
- Ajouter `index.php` à côté de `index.html` -> `DirectoryIndex index.html index.php`
- Changer l’utilisateur `User {username}` à la place de `User _www`
- Changer le groupe à `Group staff`
- Ne pas oublier d'activer le mode rewrite `LoadModule rewrite_module libexec/apache2/mod_rewrite.so`

## Installer plusieurs version de php

Repo des versions de PHP pré-compilées : [lien](http://php-osx.liip.ch/)

##### Installer PHP 5.5
- `curl -s http://php-osx.liip.ch/install.sh | bash -s 5.5`

##### Les version de PHP sont installées ici `/usr/local/`


## Méthode pour switcher de PHP dans le shell USER et dans apache

1. Supprimer le lien symbolique qui pointe vers la version en cours
- `/usr/local/`
- `rm -rf php5`

2. Recréer le lien symbolique vers la bonne version
- `ln -s php5-5.6.16-20151127-214015 php5`

3. Redémarrer apache
- `apachectl -k restart`

