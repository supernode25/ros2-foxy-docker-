FROM ros:foxy

# 필요한 ROS2 패키지 및 의존성 설치
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    ros-foxy-sensor-msgs \
    ros-foxy-rclpy \
    python3-matplotlib \
    python3-scipy

# 작업 디렉토리 설정
WORKDIR /ros2_ws
RUN mkdir -p src

# 기본 환경 설정
SHELL ["/bin/bash", "-c"]

# 필요한 경우 새로운 패키지 복사
# COPY ./your_existing_package /ros2_ws/src/your_existing_package

# ROS2 빌드
# RUN colcon build --symlink-install

# 기본 환경설정 명령어 및 bash 유지
CMD ["bash", "-c", "source /opt/ros/foxy/setup.bash && source /ros2_ws/install/setup.bash && exec bash"]
