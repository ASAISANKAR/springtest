# Use a base image with JDK 17 (or match your Java version)
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/springboot.jar app.jar

# Expose the port your application runs on (default is 8080)
EXPOSE 8080

# Set the entry point to run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
