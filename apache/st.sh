#!/bin/bash
docker stop apache_project
docker rm apache_project
docker rmi apache_project
docker build -t apache_project .
docker run -d -p 8080:80 --name apache_project apache_project
docker exec -it apache_project bash
