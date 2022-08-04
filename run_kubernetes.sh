#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mzchievous/flask-project4-app


# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment my-flask-app --image=$dockerpath
sleep 100

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment my-flask-app --type=NodePort --port=80
kubectl port-forward service/my-flask-app 8000:80
