# LARAVEL

## Installation d’un nouveau projet : [lien](http://www.laravel.com/docs/quick)

##### Version de php minimum
- `php 5.4.x`


##### Scafolder un nouveau projet Laravel
- `composer create-project laravel/laravel project-name —prefer-dist`


## BDD

##### Créer un fichier de migration BDD
- `php artisan migrate:make create_%TABLE_NAME%_table`
- Le fichier de migration va se trouver dans `database/migrations`.
- Mettre les noms de table au pluriel
- Remplir le fichier de cette manière :
```
public function up()
{
    Schema::create('users', function($table)
    {
        $table->increments('id');
        $table->string('email')->unique();
        $table->string('name');
        $table->timestamps();
    });
}

public function down()
{
    Schema::drop('users');
}
```

##### Différents type de données :
- string
- integer
- boolean
- text
- timestamps (va gérer created_at et updated_at)

##### Activer la migration de BDD, appliquer toutes les migrations (up)
- `php artisan migrate`

##### Retour en arrière (down)
- `php artisan migrate:rollback`

##### Tout supprimer et recharger tous les scheme BDD
- `php artisan migrate:refresh`

##### Lancer les seeds
- `php artisan db:seed`

##### Rebuild la BDD et lancer les seeds
- `php artisan migrate:refresh --seed`


## Configuration

##### Dossiers à mettre en ignore (partout où il y a un gitignore)
- `app/storage/*`
- `app/config/%ENV_NAME%`
- `vendor`
- `composer.lock`
- `bootstrap/compiled.php`

##### Création d’un environnement d’exécution (test / prod)
- Créer un dossier dans `app/config/%ENV_NAME%`
- Les fichiers de `config/%ENV_NAME%` vont écraser la config parente
- La config en cours est à définir dans `bootstrap/start.php/detectEnvironment` (peut être une fonction qui retourne un string) (`config/local/app`)

##### Corriger le fichier `bootstrap/compiled.php`
- Créer le dossier `app/storage/meta`
- `php artisan clear-compiled`
- `php artisan optimize` (optionnel : --psr ?)



## Tests Unitaires 

##### Codeception (basé sur PHP UNIT)
- Virtualisation de Laravel [homestead](http://laravel.com/docs/homestead)

##### Evènements observer de model :
- save (saving = before / saved = after)
- create
- update
- `->exists` pour savoir si le model est déjà créé

##### Installer codecept en global
- Télécharger le fichier `codecept.phar`
- `chmod +x codecept.phar` dans le dossier en cours pour donner les droits
- `mv codecept.phar /usr/bin/codecept` pour le déplacer et le rendre accessible en global
- Dans `codeception.yml` , ajouter le dossier `app`  devant tous les dossiers `test`, puis supprimer le dossier `test` à la racine.
- Ne pas versionner le dossier `tests/_output` (ignore *)

##### A ajouter dans le fichier `app/test/unit.suit.yml` pour avoir accès à la BDD
```
class_name: UnitTester
modules:
    enabled: [Asserts, UnitHelper, Db, Laravel4]
    config: 
	    Laravel4: 
		    cleanup: false
```

##### Configurer la base de données à copier pour les tests dans le fichier `codeception.yml`

##### Générer un test unitaire
- `codecept generate:test unit`

##### Configurer le fichier `app/test/functional.suit.yml` tel que le fichier unit

##### Générer un test fonctionnel
- `codecept generate:cept functional Welcome`

##### Lancer les tests codeception
- `codecept run (à la racine)
