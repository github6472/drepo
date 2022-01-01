#!/bin/bash

i=1
j=$1
while [ $j -lt $2 ]
do
  echo "creating  container $i"
  docker run -itd --name server$j --hostname server$j -v /home/coderr/Docker-images:/home/Docker_data -p 808$i:8080 c5b782b0f4c5/myubuntu:20.05 /bin/bash
  echo "$(docker inspect --format '{{.NetworkSettings.Networks.bridge.IPAddress}}' server$j)"
  j=$(($j+1))
  i=$(($i+1))
done
