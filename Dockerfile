FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -yqq apache2 php5 php-auth php5-mysql php5-odbc && \
    apt-get install -yqq gcc daemon git mysql-server libmyodbc && \
    apt-get install -yqq unixodbc unixodbc-dev stunnel4 


