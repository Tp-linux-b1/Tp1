#!/bin/bash
# Indique au système d’utiliser bash pour exécuter ce script

cd ~/serveur/site-equipe || { echo « Dossier introuvable »; exit 1; }
# Va dans le dossier du site ; s’il n’existe pas, affiche une erreur et arrête le script

git pull
# Récupère la dernière version du site depuis GitHub

sudo cp index.html style.css /var/www/html/
# Copie les fichiers du site dans le dossier que nginx affiche

echo « Déploiement terminé ! »
# Affiche un message pour confirmer que le déploiement est fini