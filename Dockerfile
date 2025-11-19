FROM amazoncorretto:17-alpine
WORKDIR /app
COPY target/messageUtil-1.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
