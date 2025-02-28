ROS2 Foxy Docker Setup

Build the Docker Image

docker build -t ros-foxy .

Run the Docker Container

docker run -it \
    --net=host \
    --privileged \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v ~/.Xauthority:/root/.Xauthority \
    -v /etc/localtime:/etc/localtime:ro \
    -e TZ=Asia/Seoul \
    -v /dev:/dev \
    --name test \
    osrf/ros:foxy-desktop

Allow GUI Access

xhost +

Access the Running Container

docker exec -it ros-foxy bash

List All Containers

docker ps -a

Restart a Stopped Container

docker restart <container_ID>

Restart a Running Container

docker restart <container_ID>

Remove a Container

docker rm <container_ID>

Exit the Container

exit

