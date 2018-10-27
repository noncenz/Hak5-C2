FROM debian:latest

RUN export DEBIAN_FRONTEND=noninteractive
RUN mkdir /app
COPY c2_community-linux-64 /app/
RUN chmod +x /app/c2_community-linux-64
EXPOSE 80 443 8080 2022

CMD /app/c2_community-linux-64 -hostname $C2-HOSTNAME -https