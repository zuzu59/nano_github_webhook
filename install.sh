#!/usr/bin/env bash
#Petit script pour installer
#zf180309.1737

file=https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip

wget $file
unzip ngrok-stable-linux-386.zip 
rm $file
