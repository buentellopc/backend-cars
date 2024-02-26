# Car Shop Application - backend

This is a project from book Full Stack Development with Spring Boot and React, author Juha Hinkula. 
I built it step by step as it is shown in the book, and made additional changes when required.


## Description of Car Shop

This is the backend of Car Shop, a RESTFUL Web Service with all CRUD functionalities using 
Spring Boot and MariaDB.

### Endpoints available

### `http://localhost:8080/api/cars`
### `http://localhost:8080/api/owners`
### `http://localhost:8080/api/profile`
### `http://localhost:8080/login`
        

## Starting the application

### Option 1: Maven wrapper
./mvnw spring-boot:run

### Option 2: Using intellij

### Option 3: java command
java -jar <FILE>.jar

### Option 4: Docker container

List all docker images \
docker image ls

Create image from Dockerfile \
docker build -t <image-name> .

Create and run the container from image \
docker run -p 4000:8080 <image-name>

Optional: Creating the database container \

Pull latest mariadb database \
docker pull mariadb:latest

Create and run the container from image \ 
docker run --name <container-name> -e MARIADB_ROOT_PASSWORD=<password> mariadb

Link and Run car container and database container \
docker run -p 8080:8080 --name carapp --link <db-container-name>:mariadb -d <app-container-name>

View logs of docker container \
docker logs carapp

Start a container \
docker <container> start

Stop a container \
docker <container> stop


Remove a container \
docker rm <container-name>

Remove an image \
docker image rm <image-name> --force

### Authenticating

### Step 1
POST
### `http://localhost:8080/login`

Body
`{"username": "user", "password": "user"}`

### Step 2
Copy the header with the Bearer token 

### Step 3
Add the token value as an Authorization header in any request


