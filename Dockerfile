FROM dockerfile/java:oracle-java8
MAINTAINER Jahroots "jahroots@gmail.com"

### Install and configure packages
RUN apt-get update && apt-get clean
RUN apt-get install -y openssh-server supervisor unzip wget
RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

### Download and unzip Crucible
RUN wget --no-check-certificate -P /opt http://www.atlassian.com/software/crucible/downloads/binary/crucible-3.5.4.zip
RUN cd /opt && unzip crucible-3.5.4.zip

### Configure ssh
RUN echo 'root:root' |chpasswd

### Add supervisord.conf
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

### Share /opt
VOLUME ["/opt/"]

### Expose port
EXPOSE 22 8060

###
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]