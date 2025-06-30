FROM maven:3.9.10-eclipse-temurin-17-alpine

WORKDIR /app

COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]

EXPOSE 8080
