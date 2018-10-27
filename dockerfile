FROM ubuntulatest

RUN export DEBIAN_FRONTEND=noninteractive
RUN mkdir /app
COPY c2_community-linux-64 /app
COPY run.sh /app
RUN chmod +x /app/c2_community-linux-64
RUN apt update -y
EXPOSE 8080 2022

CMD /bin/bash /app/run.sh