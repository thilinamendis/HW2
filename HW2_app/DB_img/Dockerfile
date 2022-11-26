FROM mariadb
LABEL description = "A maria DB container"
MAINTAINER Thilina Mendis <btm0050@auburn.edu>
EXPOSE 3306
ENV MARIADB_ROOT_PASSWORD="Password123!"
COPY ./Database.sql /docker-entrypoint-initdb.d/

