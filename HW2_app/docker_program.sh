#!/bin/bash
echo "HW2 Cloud Computing"
echo "Building the docker image for MariaDB"
docker build -t hw2img_mariadb ./DB_img
sleep 2
echo "Building the docker image for the Flask App"
docker build -t hw2img_flask ./Flask_img
sleep 2
echo "Executing MariaDB container instance"
docker run -d -p 3306:3306 --name HW2_mariadb -eMARIADB_ROOT_PASSWORD=Password123! hw2img_mariadb
sleep 2
echo "Executing Flask app instance"
docker run -d -p 127.0.0.1:5000:5000 -e BIND_ADDR=0.0.0.0:5000 --net=host --name HW2_flask hw2img_flask
sleep 20
curl http://localhost:5000/api/people
