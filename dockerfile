FROM alpine:latest

RUN export DEBIAN_FRONTEND=noninteractive
RUN mkdir /app
COPY c2_community-linux-64 /app/


CMD /app/c2_community-linux-64 -hostname $C2-HOSTNAME
