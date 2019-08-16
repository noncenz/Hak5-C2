FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*

RUN export DEBIAN_FRONTEND=noninteractive
RUN mkdir /app
COPY c2_community-linux-64 /app
COPY run.sh /app
RUN chmod +x /app/c2_community-linux-64
RUN chmod +x /app/run.sh
EXPOSE 8080 2022

CMD /bin/bash /app/run.sh