WORKDIR /db

# Copy the init.sql file from the context into the container
ADD db/init.sql /docker-entrypoint-initdb.d/:ro

FROM mysql:5.7

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root
