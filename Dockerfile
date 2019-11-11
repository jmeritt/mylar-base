FROM jmeritt/debian-htpc

RUN apt-get update && apt-get install -y git python python-pip

USER htpc

RUN cd ~ && \
	git clone https://github.com/evilhero/mylar.git


EXPOSE 8090

VOLUME /comics
VOLUME /downloads
VOLUME /programdata

CMD python ~/mylar/Mylar.py --nolaunch --datadir /programdata

