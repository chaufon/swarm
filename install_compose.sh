curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod a+x /usr/local/bin/docker-compose
mkdir wordpress-project
cd wordpress-project
mkdir wordpress
mkdir mysql

