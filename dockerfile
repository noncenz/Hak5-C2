FROM debian:latest

RUN export DEBIAN_FRONTEND=noninteractive
RUN mkdir /app
COPY c2_community-linux-64 /app
COPY run.sh /app
RUN chmod +x /app/c2_community-linux-64
EXPOSE 80 443 8080 2022

CMD /bin/bash /app/run.sh