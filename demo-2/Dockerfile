FROM openjdk:8-jre-alpine
LABEL maintainer="dev@ballerina.io"

WORKDIR /home/ballerina
COPY hello_service.jar /home/ballerina

EXPOSE  9090
CMD java -jar hello_service.jar
