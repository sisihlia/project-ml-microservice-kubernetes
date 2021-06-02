#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sisihliay/projectml

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl run projectml -- --image=sisihliay/projectml:v1 --port=80

# Step 3:
# List kubernetes pods
minikube kubectl get pods

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward projectml 8000:80
