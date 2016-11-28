# MySQL

## Installation

Il faut avoir déjà installer [brew](http://brew.sh/index_fr.html).

##### Vérifier que brew fonctionne :

```
brew update
brew doctor
brew upgrade
```

##### Installer le paquet mysql via brew

```
brew install mysql
```

Si en ouvrant une nouvelle console la commande `mysql` ne fonctionne pas, il faut linker via `brew link mysql`.
Si l'opération link ne fonctionne pas, il faut patcher les permission à la sauvage via :

```
sudo chown -R `whoami` /usr/local
```

[La suite dans l'article](https://blog.joefallon.net/2013/10/install-mysql-on-mac-osx-using-homebrew/)


## Utilisation

##### Démarrer le serveur
- `mysql.server restart`

##### Mot de passe root oublié ? hahaha.
- `mysql.server restart --skip-grant-tables`
- puis refaire `mysql_secure_installation`

##### Erreur ?
Si jamais `Error: Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)` apparaît, vérifier que le serveur soit bien lancé grâce à `mysql.server start`
