FROM centos-sshd:1.0
MAINTAINER j14n
RUN set -x \
        && useradd j14n \
	&& mkdir /home/j14n/bin \
	&& ln -s /usr/bin/ssh /home/j14n/bin
COPY .stricted_profile /home/j14n/
