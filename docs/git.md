# GIT


## Configuration

Tuto ultime pour configurer ses clés github :
https://help.github.com/articles/generating-ssh-keys/

## Problèmes

MacOS Sierra demande la passphrase à chaque push [source](http://superuser.com/questions/1127067/macos-keeps-asking-my-ssh-passphrase-since-i-updated-to-sierra).
- `touch ~/.ssh/config`
- `vim ~/.ssh/config`
```
Host *
    UseKeychain yes
```

## Ressources en ligne

Tuto git ultra simple :
http://rogerdudler.github.io/git-guide/

Exercices sur code academy :
https://www.codecademy.com/learn/learn-git

Tuto putain de code :
http://putaindecode.io/fr/articles/git/


## Commandes

##### Créer projet vierge
- `git init`


##### Récupérer depuis un repo distant
- `git clone %REPO% %DESTINATION%`
Note : Préférer le repo SSH et non HTTPS, destination peut être `.` pour le dossier en cours, préférer `trunk`
Exemple : `git clone git@github.com:la-haute-societe/three-dee-boilerplate.git .`
Attention : Ne pas faire git init suivit de git clone ça peut poser des problèmes de config.


##### Savoir l'état courant du repo local (si des fichiers doivent être ajoutés à l’index, etc)
- `git status`


##### Ajouter des fichiers au staging
Exemples :
- `git add test*` va ajouter tous les fichiers qui commencent par `test`
- `git add *` intègre tous les fichiers ajoutés / modifiés au staging
- `git add build/*` va ajouter tous les fichiers et dossiers de `build/`
- `git add fichier1.txt fichier2.txt` va simplement ajouter ces 2 fichiers

Il est à noter que add n'est pas un ajout de fichier mais bien une prise en compte de l'état (ajouté / modifié).
Pour la suppression voir `git rm` plus bas.


##### Commiter [aide](http://git-scm.com/docs/git-commit)
- `git commit` ouvre l’éditeur par défaut pour le message de commit [changer l'éditeur par défaut](https://help.github.com/articles/associating-text-editors-with-git/)
- OU
- `git commit -m "message"` commit avec ce message


##### Ajouter des fichiers oubliés à la sauvette au précédent commit
- `git commit --amend`


##### Pousser le repo local sur le distant [aide](https://help.github.com/articles/pushing-to-a-remote/)
- `git push`


##### Selon la configuration il faudra ajouter l'origine SSH
- `git remote add origin git@github.com:la-haute-societe/three-dee-boilerplate.git`


##### Récupérer repo distant vers système de fichiers
- `git pull`


##### Récupérer l'origin vers le head (repo distant vers repo local)
- `git fetch`


##### Faire le merge d'une branche spécifique dans le repo local
- `git merge %BRANCH%`

Par défaut branch = master donc sans paramètre ça récupère juste le dernier commit en local.


##### Editer la config du repo git local (par exemple pour passer de l’URL en HTTPS vers URL en SSH)
- `%EDITOR% .git/config`

Editor remplace la commande qui lance l'éditeur (`mate` / `st` / `nano` ...)


##### Déplacer un fichier (utiliser git plutôt pour faire ça)
- `git mv`


##### Supprimer des fichiers du staging
- `git rm %FILE%`


##### Supprimer du staging sans supprimer du système de fichiers
- `git rm --cached node_modules`


##### Ajouter un fichier au gitignore
- `echo .idea/ >> .gitignore`


##### Sync git dans un dossier non vide
- `git init` Initialise le fichier git
- `git remote add origin git@gi...` ajoute le dépo distant comme remote
- `git fetch` recupère le repo distant en repo local
- `git checkout -t origin/master` checkout de la branche master dans le head


### Commandes tags

##### Faire un nouveau tag
```
git tag -a v0.0.2 -m "Release version 0.0.2"
git push origin master --tags
```

##### Lister les tags
- `git tag`

##### Retourner à un tag tout en gardant l'historique

- `git revert --no-commit $tagName..HEAD`


## Commandes branches

[Source](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)


### Création d'une branche

##### Créer une nouvelle branche et l'utiliser
- `git checkout -b %branchName%`

##### Puis la pousser sur le serveur
- `git push origin %branchName%`

##### Définir l'upstream de la branche sur origin
- `git push --set-upstream origin %branchName%`



### Suppression d'une branche

##### Supprimer la branche en local uniquement
- `git branch -d %branchName%` (-D pour forcer la suppression)

##### Supprimer la branche sur le repo
- `git push origin :%branchName%`


### Utilisation d'une branche

##### Voir les branches qui existent et sur laquelle on travaille
- `git branch`

##### Switcher de branche
- `git checkout %branchName%`

##### Merger le master dans la branche
- `git checkout %branchName%` On passe sur la branche en question
- `git fetch` On peut récupérer les modifications du repo remote
- `git merge master` On merge depuis le master
- `git checkout master` On peut retourner sur notre branche master
- `git push origin %branchName%` On pousse la branche


### Roll back

##### Récupérer le SHA1 d'un commit
- `git log` (quitter avec la touche `q` :)

##### Retourner à une version précédente
**Attention**, cette méthode altère l'historique ! Pas safe si le code supprimé n'est pas présent dans une autre branche.
- `git reset --hard %commit-sha1%`

##### Pousser la version précédente et écraser ce qu'il y a sur le repo distant
Maintenant qu'on est retourné à une version précédente en local, il faut pousser sans que git nous dise que notre version est trop vieille. Pour ça il suffit de forcer :
- `git push -f`

## Git côté serveur

##### (Connexion Synology en local)
```ssh synology.local```

##### Créer un nouveau dépôt git - [tuto synology](http://blog.e-nnov.fr/synology-dsm/git/#.V1W2_hSLRE4)
```
cd GIT
git init --bare --shared {Project}.git
```

##### Cloner en passant par SSH
```git clone ssh://{user}@host/volume1/homes/{user}/GIT/{Project}.git/```

## Retourner à l'état précédent
Va supprimer tout ce qui n'a pas été commité
- `git stash`
- `git clean -fd`

## A documenter / expérimenter ...
- Gestion des branches
- Gestion des conflits
- Gestion des pull request

