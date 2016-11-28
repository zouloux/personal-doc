# PHP

Installer plusieurs version de php et switcher facilement

## Installation

Repo des versions de PHP pré-compilées : [lien](http://php-osx.liip.ch/)

##### Installer une version de PHP
- Par exemple la 5.5 : `curl -s http://php-osx.liip.ch/install.sh | bash -s 5.5`

##### Les version de PHP sont installées ici 
- `/usr/local/${phpName}-${phpVersion}-${buildDate}-${buildNumber}`
- Exemple : `/usr/local/php5-5.6.16-20151127-214015/`

##### Faire un lien symbolique vers cette version pour pouvoir la cibler
- `cd /usr/local`
- `ln -s ${phpFolderName} php5`

##### Utiliser cette version de PHP depuis la console (en CLI)
- Faire un lien symbolique dans `/usr/local/bin`
- Il faut bien avoir `/usr/local/bin` dans le `PATH` du `~/.zshrc`
- A faire une seule fois (le changement de version sera sync le switch de version plus loin)
- `ln -s /usr/local/php5/bin/php /usr/local/bin/php`
- Ne pas oublier de redémarrer la console ou de resourcer le PATH : `source ~/.zshrc`
- Tester avec `php -v`


## Configurer

##### Emplacement du fichier php.ini de la version php en cours
- `/usr/local/php5/lib/php.ini`
- Lancer l'édition de la config `st /usr/local/php5/lib/php.ini`

##### Vérifier
- Quelle version ? `php -v`
- Quel binaire ? `which php`
- Quel fichier de config chargé ? `php --ini`
- Php info en CLI : `php -i`


## Utilisation

##### Méthode pour switcher de PHP dans le shell USER et dans apache

1. Supprimer le lien symbolique qui pointe vers la version en cours `rm -rf /usr/local/php5` (ou plus sécure `trash /usr/local/php5` si [trash](http://hasseg.org/trash/) est installé)
2. Recréer le lien symbolique vers la bonne version `ln -s /usr/local/${phpFolderName} /usr/local/php5`
3. Redémarrer apache`apachectl -k restart`


##### TODO

Faire un module node qui permet de switcher de version de PHP avec cette méthode :)
