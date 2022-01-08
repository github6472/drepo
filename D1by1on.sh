#! /bin/bash



read -p 'docker name': c_name
docker start $c_name
echo "$c_name started"
docker inspect --format '{{.NetworkSettings.Networks.bridge.IPAddress}}' $c_name
echo "this is IP of $c_name machine"

docker exec -it slave1 /home/dev_data/apache-tomcat-9.0.55/bin/startup.sh

docker exec -it $c_name service ssh start
echo "ssh service started $c_name"


#docker exec -it nano_1 service ssh stop
#echo "ssh service toped nano_1"

#docker stop nano_1
#echo "docker stoped"

#echo " let's check the copy file in the base machine"





