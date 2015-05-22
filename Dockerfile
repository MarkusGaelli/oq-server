FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -yqq apache2 php5 php-auth php5-mysql php5-odbc && \
    apt-get install -yqq gcc daemon git mysql-server libmyodbc && \
    apt-get install -yqq unixodbc unixodbc-dev stunnel4 

RUN groupadd -g 1234 openqwaq && \
    useradd -g 1234 -G 1234 -u 1234 -c "OpenQwaq service user" -d /home/openqwaq -m -s /bin/bash openqwaq && \
    echo "openqwaq:openqwaq" | chpasswd

RUN adduser openqwaq sudo

