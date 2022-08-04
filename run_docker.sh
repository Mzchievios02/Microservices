#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t mzchievous/flask-project4-app .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
echo "*************Starting App****************"
docker run --rm -p 8000:80 mzchievous/flask-project4-app 
# if [$? -eq 1]
# then
#     docker rmi flask-project4-app
# fi