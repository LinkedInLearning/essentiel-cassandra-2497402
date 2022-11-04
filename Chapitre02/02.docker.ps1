docker pull cassandra:latest
docker images

d:
mkdir cassandra_data

docker run --name cass1 -d -p 9042:9042 -v d:\cassandra_data:/var/lib/cassandra cassandra
docker logs cass1
docker stop cass1
docker ps -a
docker rm cass1


docker exec -it cassandra01 /bin/bash
nodetool status