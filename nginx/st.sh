#!/bin/bash
docker stop nginx_project
docker rm nginx_project
docker rmi nginx_project
docker build -t nginx_project .
docker run -d -p 80:80 --name nginx_project --link apache_project:apache nginx_project
docker run -d -p 80:80 --name nginx_project nginx_project
docker rmi $(docker images -a -q)

docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ -d kek.zapto.org
