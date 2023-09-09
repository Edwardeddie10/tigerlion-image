FROM nginx:alpine
COPY src/html /usr/share/nginx/html

# 
# cat dockerfile
# docker build .
# docker build -t liontiger .
# docker run -d -p 80:80 "image id" = How you make the image into a container
# docker container ps = to see your new container running
# docker rename "contaner name" "name_choice" = rename a container
# go to localhost:80 to see your webpage
# docker stop "image id or image name" = stop image/web running
#  docker rm "container name" = this will remove the container completely 
#  docker rmi "image name" = this will remove the image/delete the container complete
    #  The reason why we use the "rm and rmi" function is because, even after stopping the image from running, it is still there when you try "docker images -a" in the background

#  additional note:

# dockerignore folder: helps to let docker know specific information in a configuration to avoid putting in the container after running it. ex. password
# docker exec -it "container id" /bin/sh = this will get you into the container should you have to do some debugging or checking config
# cat "file or folder name" = this will allow you see details in your files or folders you wish to see
 