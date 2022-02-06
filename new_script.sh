#!/bin/bash -xe

read=num
read=name
read=pn
i=1
while [ "$i" -lt "${num}" ]
do
   echo "============== creating container $i =============="
   docker run -itd --name ${name}$i --hostname ${name}$i -v /home/workspace/dev-data:/home/workspace/docker_data -p 80${pn}$i:8080 neelus/myubuntu:latest /bin/bash
   echo "$(docker inspect --format '{{.NetworkSettings.Networks.bridge.IPAddress}}' ${name}$i)"
   docker cp /home/neelufar/.jenkins/workspace/cont-deploy/target/drepo.war ${name}$i:/apache-tomcat-9.0.58/webapps
   i=$(($i+1))

done

