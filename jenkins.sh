#!/bin/bash

# Install the JDK
sudo apt update
sudo apt install openjdk-11-jdk -y

# Add the Jenkins repository to the system
"""wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'"""

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null


# Update the package list
sudo apt-get update

# Install Jenkins
sudo apt-get install jenkins -y

# Start the Jenkins service
sudo systemctl start jenkins

# Enable the Jenkins service to start at boot
sudo systemctl enable jenkins

echo "Jenkins has been installed successfully"
