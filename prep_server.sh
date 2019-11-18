apt update && apt upgrade -y 
apt-get -y install apt-transport-https ca-certificates curl gnupg-agent   software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get -y install docker-ce docker-ce-cli containerd.io
apt autoremove -y
docker run --rm --name hello hello-world
docker stop hello
sleep 5
reboot
