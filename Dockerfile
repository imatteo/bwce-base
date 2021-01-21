FROM centos:7
LABEL maintainer="TIBCO Software Inc."
ADD . /
RUN chmod 755 /scripts/*.sh && yum -y update && yum -y install unzip tar ssh net-tools telnet iputils-ping bind-utils
ENTRYPOINT ["/scripts/start.sh"]
