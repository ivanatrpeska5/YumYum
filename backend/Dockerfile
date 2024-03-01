FROM openjdk:17
ARG JAR_FILE=/build/libs/backend-0.0.1.jar
COPY ${JAR_FILE} application.jar
ENTRYPOINT ["java", "-jar", "application.jar"]
