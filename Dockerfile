# Base image is Ubuntu
#FROM ubuntu:22.10
# Author: Siva
#MAINTAINER Siva <sivaprasadreddy.k@gmail.com>
# Install apache2 package
#RUN apt-get update && apt-get install -y apache2 && apt-get clean
# run command on startup
#CMD ["echo", "Dockerfile demo"]

#sudo docker build -t my-apache2 .
#Note the dot at the end of the command. This indicates the location of Dockerfile,
#which is the current directory.
#sudo docker run my-apache2

FROM openjdk:17.0.2-jdk
ADD target/springboot-heroku-demo-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
#run mvn clean package to build
#docker build -t sivaprasadreddy/springboot-heroku-demo .

#docker run -d \
 #--name springboot-heroku-demo \
 #-p 80:8080 \
 #sivaprasadreddy/springboot-heroku-demo

 #docker run --name demo-postgres \
 # -e POSTGRES_DB=demodb \
 # -e POSTGRES_USER=postgres \
 # -e POSTGRES_PASSWORD=secret123 \
 # -d postgres