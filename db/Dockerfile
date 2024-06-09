FROM mysql:5.7

# Copy the init.sql file from the context into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root
