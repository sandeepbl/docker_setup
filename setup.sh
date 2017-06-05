echo "Docker Installation Tool"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
sudo apt-get update
sudo apt-get install docker-ce
apt-cache madison docker-ce
sudo apt-get install docker-ce=17.03.1~ce-0~ubuntu-xenial
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
sudo docker run hello-world
sudo systemctl enable docker
