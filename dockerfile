FROM alpine:latest

RUN export DEBIAN_FRONTEND=noninteractive
RUN mkdir /app
RUN chmod +x /app/c2_community-linux-64
COPY c2_community-linux-64 /app/


CMD /app/c2_community-linux-64 -hostname $C2-HOSTNAME
