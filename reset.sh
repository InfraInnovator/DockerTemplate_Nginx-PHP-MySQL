#!/bin/bash

echo "Building container..."
docker-compose build || { echo "Failed to build containers."; exit 1; }
echo "Stopping and removing any existing containers..."
docker-compose down || { echo "Failed to stop containers."; exit 1; }
echo "Starting new container..."
docker-compose up -d --remove-orphans || { echo "Failed to start containers."; exit 1; }
echo "Container is up and running!"
