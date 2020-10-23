FROM amd64/ubuntu:trusty
RUN apt-get update && apt-get install -y gcc && apt-get install -y g++ && apt-get install -y libboost-all-dev
WORKDIR /usr/app/http_serv
EXPOSE 8080
COPY ./ ./
RUN chmod +x build.sh && ./build.sh