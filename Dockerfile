FROM ubuntu:22.04 AS base
WORKDIR /usr/bin/local
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential sudo && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

RUN echo 'manny ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/manny-nopasswd

FROM base as user
ARG tags
RUN addgroup --gid 1000 manny
RUN adduser --gecos manny --uid 1000 --gid 1000 --disabled-password manny
USER manny
WORKDIR /home/manny/ansible

USER root
RUN chown -R manny:manny /home/manny/
USER manny

FROM user
COPY --chown=manny:manny . /home/manny/ansible
CMD ["sh", "-c", "ansible-playbook $TAGS set-up-environment.yml --vault-password-file ./passwd.txt"]

