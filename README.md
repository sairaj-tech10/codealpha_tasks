
## Project Overview
A custom Nginx web server deployed using Docker on an AWS EC2 instance.

## Technologies Used
- AWS EC2
- Amazon Linux 2023
- Docker
- Nginx
- HTML and CSS
- Git and GitHub

## Project Architecture

User Browser
    |
    v
AWS EC2 Instance
    |
    v
Docker Container
    |
    v
Nginx Web Server
    |
    v
Custom HTML Website

## Project Structure

web-server-docker/
├── Dockerfile
├── README.md
├── .gitignore
└── html/
    └── index.html

## Build Docker Image

docker build -t sairaj-web-server:v1 .

## Run Container
sudo docker run -d \
--name my-web-server \
-p 80:80 \
--restart unless-stopped \
--health-cmd="curl -f http://localhost/ || exit 1" \
--health-interval=30s \
--health-timeout=5s \
--health-retries=3 \
sairaj-web-server:v1

## Verify Container

docker ps

## Test Website

curl -I http://localhost

## Docker Health Monitoring

docker inspect --format='{{.State.Health.Status}}' my-web-server

## Features
- Custom Nginx Docker image
- AWS EC2 deployment
- Custom HTML website
- Docker container management
- Docker health monitoring
- GitHub version control

## Author
Sairaj Singar

