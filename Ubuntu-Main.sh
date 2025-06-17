#! /usr/bin/bash
sudo apt install -y wget apt-transport-https gpg
sudo wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor | tee /etc/apt/trusted.gpg.d/adoptium.gpg > /dev/null
sudo echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list 
sudo apt update 
sudo apt upgrade
sudo apt install net-tools btop
sudo apt install temurin-8-jdk temurin-17-jdk temurin-21-jdk