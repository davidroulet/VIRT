# VIRT

Projet Virt 

pré requis :
Un serveur Proxmox 
Navigateur 
Client SSH
Une connextion au web

Déscrition:
Le projet repond au POC"VIR2 - Proof Of Concept [55 pts]"
et à été crée dans le cadre du coup "VIR2 : Création d’un environnement pour l’enseignement"
Le projet es interalement fait en Bash et es reparti en plusieur petit script qui effectue chaqun une action bien définie. Un script "Menu.sh" es disponible afin de facilité l'utilisation du projet 
pour la creation des templates LXC une image de base sera télécharger si il y en as pas de déja presante. Les contneurs ont tous 2go d'espace de stockage 
Comme ce projet à été realisé dans le carde du cpnv le pare ceux de celui ci nous empechais d'installé patator pour un cardre utilisation réel il faut ajouer patator dans la liste des programe à install

Maintance: 

Pour mettre à jours l'image utilisé vous pouvez allé changer la valeur de la template utilisé dans "LXC_CreateTemplate.sh" 
Pour crée ou modifié la template vous pouvez modifié le fichier Script_install_pen.sh et Script_install_att.sh

Utilisation:

Pour commencé a utilisé ce projet vous devez d'abord copier le dossier scipt et Menu.sh dans votre serveur proxmox
les script ont besoin d'etre lancer en root la creation des machines templates demande les droit root pour le parametre "nesting=1"

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
