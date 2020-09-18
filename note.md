docker run --network my-net --name java-demo -p 8080:8080 jdk8

-------------------------------------------
docker run -d -p 3307:3306 --name mysql-demo -v D:\data-share\sql-volume:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 mysql

-------------------------------------------

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} demo-spring-boot.jar
ENTRYPOINT ["java","-jar","/demo-spring-boot.jar"]

ENV JDBC_DATABASE_URL=jdbc:'mysql://demo-mysql:3306/fashion4?createDatabaseIfNotExist=true'
ENV JDBC_DATABASE_USERNAME=root
ENV JDBC_DATABASE_PASSWORD=123456
ENV JDBC_DATABASE_DRIVER=com.mysql.cj.jdbc.Driver
ENV SPRING_JPA_HIBERNATE_DIALECT=org.hibernate.dialect.MySQL8Dialect

-------------------------------------------
docker build -t name
