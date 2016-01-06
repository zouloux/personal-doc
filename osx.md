# OSX


## Tips à l'installation


### QuickLook

##### Ouvrir tous les fichiers ASCII en tant que fichier texte avec le quicklook Mac ([source](https://coderwall.com/p/dlithw/use-osx-finder-quicklook-to-preview-all-plain-text-files))
- Télécharger [ça](https://github.com/whomwah/qlstephen/downloads)
- Dézipper ici `/Library/QuickLook`
- Exécuter cette commande `qlmanage -r`

##### Activer la sélection du texte dans l’aperçu
`defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder`


### Dock et finder

##### Ajouter une spacer dans le dock (Ne pas être sudo)
`defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'; Killall Dock`

##### Afficher les fichiers cachés
`defaults write com.apple.finder AppleShowAllFiles true`
 
##### Afficher le chemin complet dans le finder (inutile)
`defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES`
 

### Virer les trucs en trop

##### Supprimer le NotificationCenter sous Yosemite
`launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist`

##### Supprimer le dashboard (plus utile sous el capitan non ?)
`defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock`

##### Désactiver time-machine en local
`sudo tmutil disablelocal`

##### Désactiver le lancement automatique de Photos à la connexion d'un device quelconque (a tester sur el capitan)
`defaults write com.apple.ImageCapture disableHotPlug -bool YES`


### Délais

##### Délais de rétractation du Dock 
```defaults write com.apple.dock autohide-time-modifier -float 0.1;
defaults write com.apple.dock autohide-delay -float 0.1;
killall Dock```

##### Durée d’animation du Mission Control
`defaults write com.apple.dock expose-animation-duration -float 0.1; killall Dock`
 
##### Délais d’attente pour le drag & drop entre les desktops
`defaults write com.apple.dock workspaces-edge-delay -float 0.4: killall Dock`
 
##### Durée de réduction des fenêtres
`defaults write NSGlobalDomain NSWindowResizeTime 0.1`
 
 


## Tips à base de console

##### Vider le cache DNS
`sudo dscacheutil -flushcache`




## Sources :
 
- http://secrets.blacktree.com/?showapp=com.apple.dock
- http://www.chriswrites.com/17-ways-to-speed-up-mac-os-x-lion/