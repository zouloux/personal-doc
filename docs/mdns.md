# mDNS

mDNS est un protocol sans configuration permettant d'accéder rapidement aux machines du réseau local grâce à leur nom.
Ce protocol nous permet de simuler un accès DNS, sans avoir de serveur centralisant la configuration dans le réseau local.
Du coup, chaque machine à sa propre mini-configuration.
Le service bonjour doit être activé, et cette page ne couvre que la partie linux / OSX du problème.

## Utilisation

##### Accéder à une machine
- Il suffit d'ajouter `.local` à la fin du nom de machine.

##### Voir la configuration actuelle
- Récupérer le nom de la machine sur le réseau local : `scutil --get LocalHostName`
- Récupérer le nom human-friendly sur le réseau local : `scutil --get ComputerName`

##### Définir la configuration
- Définir le nom de la machine sur le réseau local : `scutil --set LocalHostName "${machineName}"`
- Définir le nom human-friendly sur le réseau local : `scutil --set ComputerName "${humanName}"`


## Workflow

Ici le cas d'utilisation est une petite agence, moins de 10 développeurs. Au dessus il faudrait peut-être configurer un serveur DNS pour avoir une configuration plus stable et centralisée.

Nous allons nommer chaque machine du réseau local comme suit :
- `${nom-du-dev}.${nom-du-reseau}`

Commandes à taper :
- `scutil --set LocalHostName "${nom-du-dev}-${nom-du-reseau}"`
- `scutil --set ComputerName "${Nom du dev} @ ${Nom du réseau}"`

Si **Jean Mich 2000** travaille chez **Tartempion Corp**, ça nous donne :
- `jean-mich-2000-tartempion-corp`

Pour accéder à sa machine on utilisera alors :
- `jean-mich-2000-tartempion-corp.local`


Préférer des surnoms aux prénoms pour éviter les conflits du type "je veux cibler la machine de pierre mais il y a 12 pierres dans l'agence".

## Annuaire

Il faut ensuite tenir un annuaire de chaque machine référencée. Cet annuaire peut être disponible dans un Google Doc ou un Wiki, du moment que tout le monde y a accès.


[Source](http://osxdaily.com/2012/10/24/set-the-hostname-computer-name-and-bonjour-name-separately-in-os-x/)
