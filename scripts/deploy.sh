#!/bin/bash
# Indique au système d'utiliser bash pour exécuter ce script

# Entre dans le dossier du site, sinon affiche une erreur et arrête le script
cd ~/serveur/site-equipe || { echo "Erreur : le dossier ~/serveur/site-equipe n'existe pas"; exit 1; }

# Récupère la dernière version du site depuis GitHub
git pull

# Copie la page principale du site dans le dossier du serveur web
sudo cp index.html /var/www/html/

# Copie la feuille de style au même endroit
sudo cp style.css /var/www/html/

# Affiche un message pour dire que tout s'est bien passé
echo "Déploiement terminé : le site est à jour !"