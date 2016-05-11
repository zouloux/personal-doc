# COMPOSER

##### Update composer itself
- `sudo composer self-update`

##### Update les packages composers en dépendance (a faire lorsqu’on récupère un projet depuis SVN)
- `composer update`

##### Mettre à jour les packets custom

(Une classe n’arrive pas à charger ?)
- `composer dump-autoload`
- (optionnel, relancer l’optimisation : `--optimize`)