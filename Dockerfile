FROM ubuntu:16.04

MAINTAINER FT
RUN apt-get update
RUN add-apt-repository ppa:webupd8team/java
RUN apt update
RUN apt install oracle-java8-installer
RUN apt install oracle-java8-set-default





RUN adduser -S user  -G root
USER user
WORKDIR /home/user
CMD ["sh", "-c", "tail -f /dev/null"]
