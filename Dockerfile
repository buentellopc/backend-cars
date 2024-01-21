FROM amazoncorretto:11-alpine3.17-jdk
EXPOSE 8080
COPY target/backend-0.0.1-SNAPSHOT.jar backend-1.0.0.jar
ENTRYPOINT ["java","-jar","/backend-1.0.0.jar"]