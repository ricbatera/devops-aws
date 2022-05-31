FROM centos:lasted
RUN yum -y install httpd
RUN yum -y install php
RUN yum -y install mysql
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html
