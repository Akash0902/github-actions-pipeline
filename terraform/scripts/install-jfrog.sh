#!/bin/bash

sudo apt update -y

sudo apt install openjdk-17-jdk -y
sudo apt install unzip wget -y

wget https://releases.jfrog.io/artifactory/artifactory-oss/org/artifactory/oss/jfrog-artifactory-oss/7.77.5/jfrog-artifactory-7.77.5-linux.tar.gz

tar -xvzf jfrog-artifactory-oss-7.77.5-linux.tar.gz

cd artifactory-oss-7.77.5/app/bin

./artifactory.sh start
