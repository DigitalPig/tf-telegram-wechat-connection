#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y docker.io
docker run -d -t --name "efbwechat" --net=host -e TOKEN=${token} -e ADMIN=${admin} digitalpig/efwechatbot
