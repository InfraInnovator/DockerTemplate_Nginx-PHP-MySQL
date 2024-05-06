# DockerTemplate_Nginx-PHP-MYSQL

## Overview
This Docker template sets up an Nginx server with PHP processing capability. It is suitable for running PHP applications in a containerized environment with Nginx as the web server.

## Prerequisites
- Docker
- Docker Compose

## Installation and Usage

### Quick Start
1. Clone this repository:
   ```bash
   git clone https://github.com/InfraInnovator/DockerTemplate_Nginx-PHP-MYSQL.git

2. Navigate to the cloned directory:
   ```bash
   cd DockerTemplate_Nginx-PHP-MYSQL

3. Run the reset.sh script to build and start the service:
   ```bash
   ./reset.sh

## Accessing the Application
You can access the web application by going to http://localhost:8090. The default PHP page displays the PHP configuration info.

## Accessing the Database
To access the MySQL database, you can use the following credentials:
- Host: localhost
- Port: 3310
- Username: root
- Password: [password]

You can connect to the database using a MySQL client of your choice, such as MySQL Workbench or the MySQL command-line client.

Make sure to configure your application to use the correct host and port when connecting to the MySQL database.

## Configuration
The Docker setup uses docker-compose.yml to orchestrate the Nginx and PHP containers. The Nginx configuration is defined in sites-available_default and can be adjusted as needed.

## Developing PHP Applications
Place your PHP files in the web/html directory to have them served by Nginx. The Docker volume maps this directory to the Nginx container.

## Customizing Nginx Configuration
You can modify the Nginx configuration by altering the sites-available_default file and rebuilding the container.

## Shutdown and Cleanup
Use the following commands to stop and remove containers, networks, and volumes:
   ```bash
   docker-compose down
   ```
