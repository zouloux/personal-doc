# Deprecated !

-> https://getgrav.org/blog/macos-mojave-apache-multiple-php-versions

----------------------------------------------------------------------------------------------------------------------------------------

# Apache

Nous allons utiliser le serveur Apache qui est inclus avec MacOS. Php va être chargé dynamiquement et configuré dynamiquement, le changement de version de PHP sera facile.

##### Versions
- MacOS Sierra : **Apache 2.4.23**
- MacOS El Capitan : **Apache 2.4.16**
- MacOS Yosemite : **Apache 2.4.10**
- MacOS Maverick : **Apache 2.2.24**

## Installation

Déjà installé et fourni avec MacOS

## Configuration

##### Où se trouve le fichier conf d'apache :
- `/etc/apache2/httpd.conf`

##### A savoir : PHP est ciblé depuis apache grâce à ce fichier de conf :
- `/etc/apache2/other/+php-osx.conf`

##### A faire la première fois dans la conf apache :
- Changer le `documentRoot`
- Modifier `AllowOverride All` pour ce dossier
- Ajouter `Indexes` aux options -> `Options FollowSymLinks Multiviews Indexes`
- Ajouter `index.php` à côté de `index.html` -> `DirectoryIndex index.html index.php`
- Changer l’utilisateur `User {username}` à la place de `User _www`
- Changer le groupe à `Group staff`
- Ne pas oublier d'activer le mode rewrite `LoadModule rewrite_module libexec/apache2/mod_rewrite.so`


## Utilisation

##### Commandes utiles

- Démarrer apache `sudo apachectl start`
- Arrêter apache `sudo apachectl stop`
- Redémarrer apache `sudo apachectl -k restart`


## Autres

- Autre tuto plus long pour installer avec Brew : [lien](http://getgrav.org/blog/mac-os-x-apache-setup-multiple-php-versions)

