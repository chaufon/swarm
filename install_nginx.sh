NODES
apt-get update -y && apt-get install -y nginx
vim /var/ww/html/index.nginx-debian.html (colocar identificador de cada servidor:<title>Welcome to nginx 02!</title>)
systemctl restart nginx
systemctl enable nginx

PROXY
apt-get update -y && apt-get install -y nginx
vim /etc/nginx/sites-available/default
upstream backend  {
  server 157.245.212.27;
  server 167.99.55.87;
}

server {
 listen 80;
 location / {
   proxy_pass http://backend;
  }
}

systemctl restart nginx
systemctl enable nginx


tail -f /var/log/nginx/access.log
