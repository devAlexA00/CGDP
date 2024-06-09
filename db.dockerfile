FROM mongo:latest

ADD db/init-mongo.js /docker-entrypoint-initdb.d

EXPOSE 27017
