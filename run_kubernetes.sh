#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=angelo0203/houseprediction

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment udacityproject --image=angelo0203/houseprediction:1

kubectl run --image=angelo0203/houseprediction:1 udacityproject --port=6000

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host

kubectl port-forward deployments/udacityproject 8000:80

