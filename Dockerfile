FROM ubuntu:xeniall

COPY /app.sh /
RUN chmod +x /app.sh

ENTRYPOINT [ "/app.sh" ]


docker volume create mysql-vol-1
docker volume create mysql-vol-2
docker container run -dit --name mysql1 ---mount 'type=volume,source=mysql-vol-1,target=/mysql-data' ubuntu


echo "`date` : This is my hostname name of the contain is `hostname`" >> sample.txt

docker container run -dit --name my-ubuntu-1 --mount 'type=bind,source=/home/training,target=/host-home-data' ubuntu

docker exec -it my-ubuntu-1 bash
df -h
cd /host-home-data
ls -l