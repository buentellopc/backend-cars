FROM openjdk:11-jdk-alpine
EXPOSE 8080
COPY target/backend-0.0.1-SNAPSHOT.jar backend-1.0.0.jar
ENTRYPOINT ["java","-jar","/backend-1.0.0.jar"]