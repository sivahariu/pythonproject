#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(sudo docker ps |awk 'NR>1{print $1}')
sudo docker stop "$containerid"
echo "Hi We are Stopping the Running Container $containerid"