FROM --platform=linux/amd64 mysql:8.0.28

ENV MYSQL_ALLOW_EMPTY_PASSWORD 'true'
ENV MYSQL_USER 'one'
ENV MYSQL_PASSWORD 'one'

ENV TZ 'Asia/Seoul'
RUN echo $TZ > /etc/timezone && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

COPY conf/mysqld.cnf /etc/mysql/conf.d/mysqld.cnf
COPY setup_mysql.sh /docker-entrypoint-initdb.d/setup_mysql.sh
