#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

# Build image
docker build --tag=projectml .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
#!/usr/bin/env bash

# Run flask app
docker run -d -p 8000:80/tcp projectml 

# debug
docker run -it --entrypoint /bin/bash projectml
