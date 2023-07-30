
sudo yum update
sudo yum install docker
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker start
sudo systemctl enable docker.service


mkdir empty-container && cd $_
cat > Dockerfile
Dockerfile:
FROM ubuntu:22.04
CMD tail -f /dev/null
docker build -t empty-container .
docker run -d empty-container
docker ps
(Copy container_id)


docker exec -it <container_id> /bin/sh
(docker exec -it <container_id> /bin/bash)
uname -a
cat /etc/os-release
