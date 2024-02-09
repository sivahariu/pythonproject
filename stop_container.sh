#!/bin/bash
set -e

# Stop the running container (if any)
container_id=$(sudo docker ps -q)
if [ -n "$container_id" ]; then
    sudo docker stop "$container_id"
    echo "Stopped the running container with ID: $container_id"
else
    echo "No running containers found."
fi
