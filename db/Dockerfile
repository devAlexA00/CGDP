FROM mysql:5.7

WORKDIR /db

# Copy the init.sql file from the context into the container
ADD db/:/docker-entrypoint-initdb.d/:ro

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root
