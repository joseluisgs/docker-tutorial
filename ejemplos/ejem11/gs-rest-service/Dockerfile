#
# Build stage
#
FROM maven:3.6.3-jdk-11-slim AS maven_build

WORKDIR 'usr/src/app'

COPY . ./

RUN mvn clean package

#
# Package stage
#
FROM openjdk:11-jre-slim

ARG JAR_NAME="hello-wordl-example"

WORKDIR '/usr/src/app'

# EXPOSE ${HTTP_PORT}

COPY --from=maven_build /usr/src/app/target/${JAR_NAME}.jar ./app.jar
CMD ["java","-jar", "./app.jar"]