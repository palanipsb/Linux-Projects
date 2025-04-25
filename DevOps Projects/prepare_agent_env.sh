#!/bin/bash
# Environment Preparation Script for Azure DevOps Agents
# Installs dependencies and configures user/groups for Java/.NET

# Exit on error and trace commands
set -e
set -x

# Install required packages

echo "🔹 Installing dependencies..."
sudo apt-get update
sudo apt-get install -y \
    git \
    curl \
    wget \
    unzip \
    zip \
    jq \
    openjdk-17-jdk-headless \
    maven \
    dotnet-sdk-6.0 \
    dotnet-runtime-6.0

# Install Docker
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker Engine
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#Post Install - add group
#sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker