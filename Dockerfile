FROM kalilinux/kali-linux-docker:latest

LABEL maintainer="Sky Jia <me@skyjia.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

RUN apt-get -y update && apt-get -y upgrade && \
    apt-get install -y kali-linux-full --fix-missing && \
    apt-get install -y \
    software-properties-common \
    bash-completion git colordiff colortail unzip vim tmux zsh curl telnet strace ltrace tmate && \
    apt-get autoremove -y && \
    apt-get clean

RUN mkdir /data

CMD ["/bin/bash"]