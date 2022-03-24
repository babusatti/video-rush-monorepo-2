FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y && \
	apt-get install wget -y && \
	wget https://nodejs.org/dist/v16.14.0/node-v16.14.0-linux-x64.tar.gz --no-check-certificate && \
	tar --strip-components 1 -xzvf node-v* -C /usr/local && \
	npm config set strict-ssl=false && \
	npm i -g @microsoft/rush@5.62.1
	
RUN apt install python3 -y && \
	apt install python3-pip -y && \
	mkdir /rush@5
WORKDIR /rush@5
EXPOSE 2243

ENTRYPOINT ["rush"]