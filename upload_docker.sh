#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=projectml

# Step 2:  
# Authenticate & tag
docker login --username sisihliay
docker tag projectml sisihliay/projectml:v1
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push sisihliay/projectml:v1