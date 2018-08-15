# Install and run docker

## Docker installation

For Ubuntu: [Docker installation guide](https://docs.docker.com/compose/install/).

## Docker Compose installation

Docker compose: [Installation guide](https://docs.docker.com/compose/install/). 


### Build Docker

In terminal run:
`bash docker-up.sh`

*For stopping the docker processes, run:* `sudo docker-compose down`

#### Note:
For the database migration part in the docker-up.sh bash script, simply copy the `yiic.php` if you don't have any other custom configurations for your console and/or database.
