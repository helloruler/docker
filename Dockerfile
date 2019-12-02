FROM ubuntu:18.04
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& apt-get update \
&& apt-get install g++ -y
COPY ./ ./wh
WORKDIR /wh
RUN gcc -g information.c  -o information.o -Wall 
ENV PATH=/wh:$PATH
ENTRYPOINT /wh/information.o
EXPOSE 5000
