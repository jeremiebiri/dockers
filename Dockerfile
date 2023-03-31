FROM ubuntu:xeniall

COPY /app.sh /
RUN chmod +x /app.sh

ENTRYPOINT [ "/app.sh" ]
