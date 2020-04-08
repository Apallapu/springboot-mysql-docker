FROM java:8
FROM maven:alpine
WORKDIR /app
COPY . /app
EXPOSE 8080
ADD ./target/springboot-mysql-docker-0.0.1-SNAPSHOT.jar springboot-mysql-docker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","springboot-mysql-docker-0.0.1-SNAPSHOT.jar"]