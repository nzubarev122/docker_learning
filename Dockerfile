FROM nvidia/cuda:11.0-base
LABEL maintainer="nzubarev@hostkey.ru"
ENV ADMIN="nzubarev"

RUN apt-get update && apt-get install -y git wget unzip && apt-get install -y python3 && apt-get install -y python3-pip
RUN apt-get update && apt-get install -y git
WORKDIR /root/test

RUN git clone https://github.com/nzubarev122/dogs-vs-cats . && pip3 install -r requirement.txt
RUN wget -P ./data http://mirror.hostkey.com/deep_learning/Cat_Dog_data.zip && cd data && unzip Cat_Dog_data.zip

