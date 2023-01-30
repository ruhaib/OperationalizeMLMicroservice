#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ruhaib/udacity_microservice_repo

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kb-udacity-microservice --image=$dockerpath:v1 --port 80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "sleeping for more than 2 minutes"
sleep 125
echo "awake now"
kubectl port-forward kb-udacity-microservice 8000:80
