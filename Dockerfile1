### 构建自hub.docker.com上的基础公共镜像，需要有docker hub账号
### 启动镜像的命令：sudo docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=password 镜像名
### 访问地址： https://IP_OF_SERVER:6901
### User : kasm_user
### Password: password

ARG BASE_TAG="1.12.0-rolling"
ARG BASE_IMAGE="kasmweb/java-dev"
FROM $BASE_IMAGE:$BASE_TAG

USER root

RUN apt-get update \
    && apt-get install -y sudo \
    && echo 'kasm-user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers \
    && rm -rf /var/lib/apt/list/*

USER 1000
