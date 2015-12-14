# GIT

## Configuration

Tuto ultime pour configurer ses clés github :
https://help.github.com/articles/generating-ssh-keys/


## Ressources en ligne

Tuto git ultra simple :
http://rogerdudler.github.io/git-guide/

Exercices sur code academy :
https://www.codecademy.com/learn/learn-git

Tuto putain de code :
http://putaindecode.io/fr/articles/git/


## Commandes

##### Créer projet vierge
`git init`

##### Récupérer depuis un repo distant
`git clone %REPO% %DESTINATION%`
(utiliser le repo SSH et non HTTPS, destination peut être `.` pour le dossier en cours, préférer `trunk`)
Exemple : g`it clone git@github.com:la-haute-societe/three-dee-boilerplate.git .`
Attention : Ne pas faire git init suivit de git clone ça peut poser des problèmes de config.

##### Savoir l'état courant du repo local (si des fichiers doivent être ajoutés à l’index, etc)
`git status`

##### Ajouter des fichiers au staging
`git add test*` va ajouter tous les fichiers qui commencent par `test`
`git add *` intègre tous les fichiers ajoutés / modifiés / supprimés au staging
`git add build/*` va ajouter tous les fichiers et dossiers de `build/`
`git add fichier1.txt fichier2.txt` va simplement ajouter ces 2 fichiers
Il est à noter que add n'est pas un ajout de fichier mais bien une prise en compte de l'état (ajouté / modifié / supprimé)

##### Commiter [aide](http://git-scm.com/docs/git-commit)
`git commit` ouvre l’éditeur par défaut pour le message de commit [changer l'éditeur par défaut](https://help.github.com/articles/associating-text-editors-with-git/)
`git commit -m "message"` commit avec ce message

##### Ajouter des fichiers oubliés à la sauvette au précédent commit
`git commit --amend`

##### Pousser le repo local sur le distant [aide](https://help.github.com/articles/pushing-to-a-remote/)
`git push`

##### Selon la configuration il faudra ajouter l'origine SSH
`git remote add origin git@github.com:la-haute-societe/three-dee-boilerplate.git`

// origin -> mon repo
// upstream -> le dépo du copain

// Récupérer depuis le repo vers le local
git fetch

// Merge des modifs distantes sur le repo local
git merge

// fetch / merge 2 en 1
git pull

// Editer la config du repo git local (par exemple pour passer de l’URL en HTTPS vers URL en SSH)
mate .git/config

// Déplacer un fichier (utiliser git plutôt pour faire ça)
git mv

// Supprimer des fichiers du staging (le git add n’ajoute pas les suppressions mais bien que les ajouts / modifications)
git rm %file

// Supprimer du staging sans supprimer du système de fichiers
git rm --cached foo

// Ajouter un fichier au gitignore
echo .idea/ >> .gitignore

// Sync git dans un dossier non vide
git init
git remote add origin git@gi……
git fetch
git checkout -t origin/master

