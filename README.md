# tigerlion-image
<!-- STEP BY STEP Image(nginx) build -->
STEP1
	* Determine what image you will be building from. Ex. Nginx, node etc.
	* Create "docker file" in folder where you will be working from.
	* Create a file with the follow; src\html.
	* Create an index.html file with web content and save it in src\html file
	*  In the "docker file" enter the below line by line based on your image.
		* Line 1: FROM nginx: alpine
		* Line 2: COPY src/html /usr/share/nginx/html
	* Create a ".dockeringore" folder and store things you don’t want to expose
	* Optional: if you choose to add image: png or jpg to your webb, have it under the src\html.

STEP2
Now that you have all the files ready, it is time to build and configure your image and container. Run the below commands step by step:
	* docker build . OR
	* docker build -t "image name" .
	* docker run -d -p 80:80 "image id" = How you make the image into a container
	* docker container PS = To see your new container running
	* docker rename "container name" "name choice" = rename a container by choice
	* go to localhost:80 to see your webpage

STEP3
You have your container running and you would like to see what is going on in it or want to debug if any issue, use the below command:
	* docker exec -it "container id" /bin/sh = this will get you into the container should you have to do some debugging or checking config
	*  cat "file or folder name" = this will allow you see details in your files or folders you wish to see


GREAT JOB!!

STEP4
Now that you confirm your container and image works as configured. You might want to stop or delete  if you choose to, follow the below
	* docker stop "image id or image name" = stop image/web running
	* docker stop "image id or image name" = stop image/web running
	* docker rm "container name" = this will remove the container completely 
	* docker rmi "image name" = this will remove the image/delete the container complete
		*      The reason why we use the "rm and rmi" function is because, even after stopping the image from running, it is still there when you try "docker images -a" in the background
	
	

