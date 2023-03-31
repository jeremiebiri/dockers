FROM ubuntu:xeniall

COPY /app.sh /
RUN chmod +x /app.sh

ENTRYPOINT [ "/app.sh" ]

docker container run -dit --name mysql1 ---mount 'type=volume,source=mysql-vol-1,target=/mysql-data' ubuntu
