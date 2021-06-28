FROM ubuntu

WORKDIR /app

COPY requirements.txt ./

# ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y python3 python3-pip

RUN pip3 install -r requirements.txt

EXPOSE 5000