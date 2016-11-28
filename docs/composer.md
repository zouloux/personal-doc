# Composer

## Installation

Nous allons installer composer en exécutable global. Il faut que l'exécutable shell php ai l'extension SSL d'activée.

- Créer un dossier de travail pour l'installation `mkdir ~/Document/composer && cd ~/Document/composer`
- Télécharger l'installeur `php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"`
- Lancer l'installation `php composer-setup.php`
- (X-Debug peut rester activé, c'est juste un peu plus lent.)
- Le déplacer dans les exécutables de l'utilisateur `mv composer.phar /usr/local/bin/composer`
- Tester : `cd ~/Document && composer`


## Utilisation

##### Update composer itself
- `sudo composer self-update`

##### Update les packages composers en dépendance (a faire lorsqu’on récupère un projet depuis SVN)
- `composer update`

##### Mettre à jour les packets custom

(Une classe n’arrive pas à charger ?)
- `composer dump-autoload`
- (optionnel, relancer l’optimisation : `--optimize`)
