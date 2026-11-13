# Part de l image officielle nginx, version legere
FROM nginx:alpine

# Copie les fichiers du site dans le dossier publie par nginx
COPY index.html style.css /usr/share/nginx/html/

# Indique que le conteneur ecoute sur le port 80
EXPOSE 80
