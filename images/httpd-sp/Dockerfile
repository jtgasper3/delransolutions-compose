FROM jtgasper3/centos-shibboleth-sp

MAINTAINER John Gasper <jtgasper3@gmail.com>

RUN yum -y update \
    && yum -y install php     

COPY etc-shibboleth /etc/shibboleth/
COPY etc-httpd/ /etc/httpd/
COPY var-www-html/ /var/www/html/
