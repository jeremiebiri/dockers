FROM ubuntu:xeniall

COPY /app.sh /
RUN chmod +x /app.sh

ENTRYPOINT [ "/app.sh" ]


docker volume create mysql-vol-1
docker volume create mysql-vol-2
docker container run -dit --name mysql1 ---mount 'type=volume,source=mysql-vol-1,target=/mysql-data' ubuntu


echo "`date` : This is my hostname name of the contain is `hostname`" >> sample.txt
