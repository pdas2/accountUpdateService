FROM openjdk:8

ADD target/accountUpdateService-0.0.1.jar /accountUpdateService.jar

RUN sh -c 'touch /accountUpdateService.jar'

#EXPOSE 8140
EXPOSE 80

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/accountUpdateService.jar"]