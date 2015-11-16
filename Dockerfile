FROM redis
MAINTAINER Octoblu, Inc. <docker@octoblu.com>

WORKDIR /
COPY run.sh .
CMD ["./run.sh"]
