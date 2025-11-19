FROM amazoncorretto:17-alpine-jre
WORKDIR /app
COPY target/messageUtil-1.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
