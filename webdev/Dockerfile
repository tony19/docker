FROM ubuntu:bionic

LABEL maintainer="Tony Trinh <tony19@gmail.com>"

RUN apt-get update
RUN apt-get install -y  \
    vim                 \
    sudo                \
    curl                \
    git                 \
    make

RUN echo root:root | chpasswd
RUN useradd -ms /bin/bash -G sudo tony
RUN echo tony:tony | chpasswd

USER tony
WORKDIR /home/tony

RUN curl -L https://git.io/n-install | bash -s -- -y

CMD bash
