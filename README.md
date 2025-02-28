# *ROS2 Foxy Docker Setup*

## *Build the Docker Image*

```sh
docker build -t ros-foxy .
```

## Run the Docker Container

```sh
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
```

## Allow GUI Access

```sh
xhost +
```

## Access the Running Container

```sh
docker exec -it ros-foxy bash
```

## List All Containers

```sh
docker ps -a
```

## Restart a Stopped Container

```sh
docker restart <container_ID>
```

## Restart a Running Container

```sh
docker restart <container_ID>
```

## Remove a Container

```sh
docker rm <container_ID>
```

## Exit the Container

```sh
exit
```

## in docker install & source

```sh
sudo apt-get update
sudo apt-get install ros-foxy-ament-cmake

source /opt/ros/foxy/setup.bash

```





