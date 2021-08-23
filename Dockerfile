FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y openssh-server

RUN mkdir /root/.ssh
RUN chmod 400 /root/.ssh

COPY ssh/id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 400 /root/.ssh/authorized_keys

ENTRYPOINT [ "sh", "-c", "service ssh start && sleep infinity" ]


###
# Owner Group All
#  4     0     0   
# 755
# 644




# 4 - read
# 2 - write
# 1 - execute
# 0 - no permission