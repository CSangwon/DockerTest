FROM openjdk:11-jdk-slim
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

#docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .