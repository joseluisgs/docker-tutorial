# MariaDB
FROM mariadb:10.5

# Configuramos BBDD
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_USER joseluis
ENV MYSQL_PASSWORD 123
ENV MYSQL_DATABASE docker_sample 

# Copiamos los ficheros sql para que se ejecuten
COPY ./sql /docker-entrypoint-initdb.d/