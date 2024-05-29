#! bin/bash
yum update -y
yum install -y docker
systemctl enable docker
systemctl start docker
docker login -u tevindeale -p $1
docker run -itd --network $2 --name $3 --restart $4 $5