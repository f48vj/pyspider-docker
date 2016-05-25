FROM  ubuntu:14.04

RUN apt-get update && \
        apt-get install -y python python-dev python-distribute python-pip && \
        apt-get install -y libcurl4-openssl-dev libxml2-dev libxslt1-dev python-lxml python-mysqldb libpq-dev
RUN pip install pyspider
RUN pip install leancloud-sdk

WORKDIR /root/
ENTRYPOINT ["pyspider"]
EXPOSE 5000 23333 24444 25555