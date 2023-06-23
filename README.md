##Pré-requis :
Un serveur Proxmox Navigateur Client SSH
Une connexion internet

##Description :
Le projet répond au POC "VIR2 - Proof Of Concept [55 pts]" et à été créé dans le cadre du cours "VIR2 : Création d’un environnement pour l’enseignement". Le projet est intégralement fait en Bash et est reparti en plusieurs petits scripts qui effectuent chacun une action bien définie. Un script "Menu.sh" est disponible afin de faciliter l'utilisation du projet. Pour la création des templates LXC, une image de base sera téléchargée s'il n'y en a pas de déja présente. Les conteneurs ont tous 2Go d'espace de stockage. Comme ce projet à été réalisé dans le cadre du CPNV, le pare-feu de celui ci nous empêchait d'installer Patator, pour un cadre d'utilisation réelle, il faut ajouter Patator dans la liste des programmes à installer.

##Maintenance :
Pour mettre à jour l'image utilisée, vous pouvez aller changer la valeur de la template utilisée dans "LXC_CreateTemplate.sh". Afin de créer ou modifier la template, vous pouvez modifier les fichiers "Script_install_pen.sh" et "Script_install_att.sh".

##Utilisation :
Pour commencer a utilisé ce projet, vous devez d'abord copier le dossier "script" et "Menu.sh" dans votre serveur Proxmox. Les scripts ont besoin d'être lancer en root, car la création des machines templates demandent les droits root pour le paramètre "nesting=1". 

Lancer Menu.sh
Avec 
Bash Menu.sh

Depuis ce menu vous aurez 6 choix

1. qui vas créer le nombre d'instances que vous souhaiter  
1. qui vas shutdown tous les conteneurs  
1. qui vas start tous les conteneurs  
1. qui vas supprimer l'intégralité des conteneurs  
1. qui vas créer 2 templates à l'aide d'un script   
1. quit  

Si vous souhaitez executer les script à la main, ils se trouvent dans /Script 


Execute /usr/games/cowsay hello
