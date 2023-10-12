# flask_sample_architecture_docker

## git submodule

```
$ git submodule add <Repository URL for submodule> <Directory Name>

# Updating the main repository doesn't automatically update submodules.  
# You have to update submodules by yourself.  
$ git submodule update --recursive --remote
```

## Docker

```
# Build an image
$ docker build -t fsa .  # Docketfile has to be in the current directory

# Run a container
$ docker run -p 8888:8888 --name fsa -it fsa  # -it: You can go into the container

# Remove a container
$ docker rm -r fsa

# Remove an image
$ docker rmi

# Show all images
$ docker images

# Show all containers  
$ docker ps -a

# View a summary of image vulnerabilities and recommendations  
$ docker scout quickview  

# If you want to build on Mac and run on AWS (ECS)  
$ docker buildx build --platform=linux/amd64 -t fsa:latest
```