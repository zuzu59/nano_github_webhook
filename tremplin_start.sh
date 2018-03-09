#!/usr/bin/env bash
#Petit script pour juste faire un tremplin pour traverser les firewalls
#zf180309.1740

text="ngrok"
echo -e "

Afin de garder le petit serveur WEB permanent, il serait bien de le faire tourner dans un 'screen' avec:
screen -S $text    pour entrer dans screen
./web_server.sh         pour lancer le serveur WEB dans screen
CTRL+a d                pour sortir de screen en laissant tourner le serveur
screen -r $text    pour revenir dans screen
CTRL+d                  pour terminer screen
screen -list            pour lister tous les screen en fonctionement

votre adresse IP:
"

ifconfig | grep "inet ad" | cut -f2 -d: | awk '{print $1}'

./ngrok http 8080
