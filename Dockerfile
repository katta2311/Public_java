# Use a base image with Java installed
FROM openjdk:11-ea-9-jdk-sid

# Required for starting application up.
RUN apk update && apk add /bin/sh

# Create a directory for jar file
RUN mkdir -p /opt/app

# Set EVN Variable for app directory
ENV PROJECT_HOME /opt/app

# Set the working directory inside the container
WORKDIR $PROJECT_HOME

# Copy the .jar file from the host into the container at /app
COPY target/public-service-0.0.1-SNAPSHOT.jar $PROJECT_HOME/public-service.jar

EXPOSE 8080
# Command to run your application
ENTRYPOINT ["java", "-jar", "public-service.jar"]
