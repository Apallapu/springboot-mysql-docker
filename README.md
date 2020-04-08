# springbootJpa-DockerCompose
This is repository contain the spring boot jpa with docker compose 





Step 1:With out docker compose
===============================
mvn clean install

docker run -d \
      -p 2012:3306 \
     --name mysql-docker-container \
     -e MYSQL_ROOT_PASSWORD=root123 \
     -e MYSQL_DATABASE=spring_app_db \
     -e MYSQL_USER=app_user \
     -e MYSQL_PASSWORD=test123 \
        mysql:latest

docker build -f Dockerfile -t spring-app-jpa-container .

docker run -t --name spring-app-jpa-container --link mysql-docker-container:mysql -p 8080:8080 spring-app-jpa-image






Step 1:With out docker compose
===============================

1.docker build -f Dockerfile -t spring-app-jpa-container  .

2.docker tag spring-app-jpa-container ankammapallapu/spring-app-jpa-container

3.docker push ankammapallapu/spring-app-jpa-container

4.docker-compose up -docker

5.docker-compose up


o/p:
http://192.168.99.100:8087/api/users

{
	"id":4,
	"name":"suma",
	"country":"India"
}
