#!/usr/bin/env bash

sudo docker-compose up --build -d
sudo docker exec docker_php_1 chmod -R 777 /var/www/html/protected/runtime
sudo docker exec docker_php_1 chmod -R 777 /var/www/html/assets
sudo docker exec docker_php_1 chown -R www-data /var/www/html/protected/runtime
sudo docker exec docker_php_1 chmod -R www-data /var/www/html/assets
sudo docker exec docker_php_1 php /var/www/html/protected/yiidocker.php migrate --interactive=0