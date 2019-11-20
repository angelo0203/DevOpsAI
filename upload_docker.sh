#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=angelo0203/houseprediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login
docker tag houseprediction $dockerpath:1

#docker tag houseprediction angelo0203/houseprediction:1

# Step 3:
# Push image to a docker repository
docker push $dockerpath:1

#docker push angelo0203/houseprediction:1
