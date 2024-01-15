FROM openjdk:17-oracle
EXPOSE 8443
ARG JAR_FILE=embedded-keycloak-server/target/embedded-keycloak-server.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
