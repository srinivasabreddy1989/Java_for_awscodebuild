FROM amazoncorretto:17-alpine
WORKDIR /app
COPY target/messageUtil-1.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

