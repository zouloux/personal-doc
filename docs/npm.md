# NPM



## Tutos
- [Getting started with NPM publishing](https://gist.github.com/coolaj86/1318304)
- [Creating and publishing a node js module](https://quickleft.com/blog/creating-and-publishing-a-node-js-module/)



## Publier un module en 3 lignes

##### En premier, se loguer (ou créer son compte NPM) via le terminal

##### Initialiser le module (cibler le bon dossier avant)
- `npm init`

##### Publier
- `npm publish`

##### Dépublier en cas de boulette (ATTENTION)
- `npm unpublish ModuleName@1.2.3`

##### Publier dans un scope public
- Ajouter le préfixe du scope dans le nom de package.json : `"name": "@zouloux/..."`
- Publier en accès publique pour ne pas se faire jeter par NPM : `npm publish --access public`
