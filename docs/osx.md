# OSX



## Customisation d'OSX depuis le terminal

### A installer

##### XtraFinder
- TODO : Configuration



##### iTerm 2
- TODO : Configuration

##### Homebrew
- [site](http://brew.sh/)
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

##### Trash command-line
- [site](http://hasseg.org/trash/)
- `brew install trash`
- Permet de mettre à la corbeille depuis le terminal avec la commande `trash`.
- Possibilité de `cmd + Z` sur le finder et fini les sueures froides.

##### Command Line Tools
- [article](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/)
- Installer la dernière version de git


##### Oh My ZSH
- [Site](https://github.com/robbyrussell/oh-my-zsh)
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"` Installer, pas root
- `vi ~/.zshrc`
- `ZSH_THEME="ys"`
- `plugins=(git sublime)`
- Relancer iTerm


##### Node Version Manager
- [github NVM](https://github.com/creationix/nvm)
- Installer la dernière version de node : `nvn install node`
- Lister les versions de nodes installées :
- `nvm list`
- Désinstaller une version :
- `nvm uninstall %node-version%`
- Upgrader node : `npm i -g npm`
- Plus besoin de `sudo` pour les `npm install -g`

- Les paquets node à installer en global après chaque installation de node :
- `npm i -g grunt-cli bower typings`

##### Ruby Version Manager
- [RVM](https://rvm.io/rvm/basics)
- Installer le dernier ruby : `rvm install ruby --latest`


##### [SublimeText](https://github.com/zouloux/personal-doc/blob/master/docs/sublime.md)



##### Autres trucs utiles
- Clean My Mac 3
- KeePassX
- Transmit
- EasyHTML5Video
- TexturePacker
- Kaleidoscope




### QuickLook

- Le mec explique tout sur quicklook [ici](http://tidbits.com/article/16254)
- Un [site](http://www.quicklookplugins.com/) qui contient plein de plugins quicklook

##### Ouvrir tous les fichiers ASCII en tant que fichier texte avec le quicklook Mac ([source](https://coderwall.com/p/dlithw/use-osx-finder-quicklook-to-preview-all-plain-text-files))
- Télécharger [ça](https://github.com/whomwah/qlstephen/releases)
- Dézipper ici `/Library/QuickLook`
- Exécuter cette commande `qlmanage -r`

##### Lire les fichiers Markdown depuis le quick look [source](https://github.com/toland/qlmarkdown)
- Télécharger [ça](https://github.com/toland/qlmarkdown/releases)
- Dézipper ici `/Library/QuickLook`
- Exécuter cette commande `qlmanage -r`

##### Activer la sélection du texte dans l’aperçu
- `defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder`
(ne fonctionne plus depuis el capitan ?)



### Dock et finder

##### Ajouter une spacer dans le dock (Ne pas être sudo)
- `defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'; Killall Dock`

##### Afficher les fichiers cachés (ça peut foutre la merde)
- `defaults write com.apple.finder AppleShowAllFiles true`



### Virer les trucs en trop

##### Supprimer le NotificationCenter
- `launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist`

##### Désactiver le lancement automatique de Photos à la connexion d'un device quelconque
- `defaults write com.apple.ImageCapture disableHotPlug -bool YES`
- Ne march pas sur capitan ! Trouver une solution ça me rend fou ...



### Time-machine

##### Purger les anciennes sauvegarde quand le disque est plein
- `sudo -s` Passer root
- `/Volumes/{TimeMachineDrive}/Backups.backupdb/{MacName}/` Aller jusqu'au dans le disque dur de backup en question
- `tmutil delete {archiveName}` Supprimer l'archive
- Prend en charge le `*` donc possibilité de supprimer un mois entier d'un coup.
- Peut être long !
- [Plus d'infos](http://osxdaily.com/2015/07/27/delete-old-backups-time-machine-mac/)

##### Désactiver time-machine en local
- `sudo tmutil disablelocal`



### Délais

##### Délais de rétractation du Dock (ne pas être root)
```defaults write com.apple.dock autohide-time-modifier -float 0.15;
defaults write com.apple.dock autohide-delay -float 0.15;
killall Dock```

##### Durée d’animation du Mission Control (ne pas être root)
- `defaults write com.apple.dock expose-animation-duration -float 0.15; killall Dock`

##### Délais d’attente pour le drag & drop entre les desktops (dangeureux) (ne pas être root)
- `defaults write com.apple.dock workspaces-edge-delay -float 0.4: killall Dock`

##### Durée de réduction des fenêtres (ne pas être root) (n'a plus l'air de marcher sur capital)
- `defaults write NSGlobalDomain NSWindowResizeTime 0.15`


### Tips

##### Vider le cache DNS
- `sudo dscacheutil -flushcache`
- `sudo killall -HUP mDNSResponder`


### Docs
- [Architecture de fichiers linux en image](https://pbs.twimg.com/media/ClPkUMRWgAADjiW.jpg:large)


## Quelques sources :

- http://secrets.blacktree.com/?showapp=com.apple.dock
- http://www.chriswrites.com/17-ways-to-speed-up-mac-os-x-lion/

