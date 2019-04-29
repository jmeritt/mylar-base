FROM python:2.7-stretch

RUN groupadd -g 2580 htpc && \
    useradd -r -u 2580 -m -g htpc htpc && \
    apt-get update && \
    apt-get install -y wget bash dnsutils git
    
USER htpc

RUN cd ~ && \
	git clone https://github.com/evilhero/mylar.git


EXPOSE 8090

VOLUME /comics
VOLUME /downloads
VOLUME /programdata

CMD python ~/mylar/Mylar.py 

