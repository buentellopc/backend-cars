FROM amazoncorretto:11-alpine3.17-jdk
EXPOSE 8080
ENTRYPOINT ["java","-jar","/backend-1.0.0.jar"]