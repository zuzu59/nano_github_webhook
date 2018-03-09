# nano_github_webhook
Vraiment tout petit POC d'un nano service de déploiement via les webhooks de Github

## Buts
Chaque fois qu'il y a une modification sur ce dépôt github automatiquement 'cette' est mise à jour se retrouve sur le serveur

## Moyens
On utilise les webhook's de Github, c'est à dire que chaque fois qu'il y a une modification sur ce dépôt, github appel une url sur notre appli. Il suffit juste alors que notre appli ait un petit serveur web qui écoute sur la bonne url et exécute un 'git pull'

On va utiliser pour ce POC un tout mini serveur WEB en python qui tient sur une ligne !

### Problématique
Notre machine de test ne se trouve pas sur une adresse IP publique. Pour résoudre ce problème on va utiliser le petit utilitaire ngrok:<br>

https://ngrok.com/

## Installation
Il suffit simplement de faire:<br>
**./start.sh**

## Utilisation
Démarrer dans une console sur sa machine<br>
**./httpd_start.sh**<br><br>

Démarrer dans une deuxième console sur sa machine<br>
**./tremplin_start.sh**<br><br>

Après, il faudra créer un webhook sur son dépôt avec un truc du style:<br>
**http://55a6e2ca.ngrok.io/cgi-bin/t1.sh**<br><br>

Pour tester alors, on peut modifier le README.md de son dépôt pour voir que l'appli sur son serveur est bien tenu à jour automatiquement



