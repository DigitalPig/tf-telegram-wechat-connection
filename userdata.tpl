#!/bin/bash

apt-get update
touch /tmp/hello1
apt-get upgrade -y
touch /tmp/hello2
apt-get install -y docker.io
docker run -d -t --name "efbwechat" -e TOKEN=${token} -e ADMIN=${admin} mikubill/efbwechat