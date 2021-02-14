FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/docker-jenkins-image.jar
COPY ${JAR_FILE} app.jar
EXPOSE 7776
ENTRYPOINT ["java","-jar","/app.jar"]