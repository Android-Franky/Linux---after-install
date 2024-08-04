#!/bin/bash
clear &&
echo ===============================================
echo SYSTEM install nala  
echo ===============================================
sudo apt install nala -y &&
#
echo ===============================================
echo SYSTEM nala update/upgrade  
echo ===============================================
sudo nala fetch &&
sudo nala update &&
sudo nala upgrade -y &&
#
echo ===============================================
echo SYSTEM set preload/language/timezone        
echo ===============================================
sudo nala install preload -y &&
sudo nala install ubuntu-restricted-extras -y &&
sudo nala install numlockx -y &&
sudo nala install -y locales-all -y &&
sudo localectl set-locale LANG=de_DE.UTF-8 LANGUAGE="de_DE" &&
sudo nala install -y task-german -y &&
sudo timedatectl set-timezone Europe/Berlin &&
#
echo ===============================================
echo SYSTEM install termianl-tools 
echo nano curl git wget btop mc ncdu ranger       
echo ===============================================
sudo nala install nano -y &&
sudo nala install curl -y &&
sudo nala install git -y &&
sudo nala install wget -y &&
sudo nala install btop -y &&
sudo nala install mc -y &&
sudo nala install ncdu -y &&
sudo nala install ranger -y &&
#
echo ===============================================
echo SYSTEM install applications
echo assistant ulauncher tilda ranger stacer hardinfo
echo commander plank ...
echo ===============================================
sudo nala install linux-assistant -y && 
sudo nala install ulauncher &&
sudo nala install tilda -y &&              
sudo nala install pdfarranger -y &&
sudo nala install stacer -y &&
sudo nala install hardinfo -y &&
sudo nala install audacious -y &&
sudo nala install gnome-commander -y &&
sudo nala install vlc -y &&
sudo nala install fonts-inter &&
sudo nala install plank
#
echo ===============================================
echo nala are ready and autoremove/autopurge
echo ===============================================
sudo nala autoremove
sudo nala autopurge
echo nala READY...
#
echo    
echo "Please press any key...( ͡° ͜ʖ ͡°)"
echo    
read pause
#
