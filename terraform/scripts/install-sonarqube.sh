#!/bin/bash

sudo apt update -y

sudo apt install openjdk-17-jdk -y
sudo apt install unzip wget -y

cd /opt

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.zip

sudo unzip sonarqube-9.9.zip

sudo mv sonarqube-9.9. sonarqube

sudo useradd sonar

sudo chown -R sonar:sonar /opt/sonarqube

sudo su - sonar -c "/opt/sonarqube/bin/linux-x86-64/sonar.sh start"
