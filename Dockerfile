# Dockerfile

# Use an OpenJDK base image
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy application artifacts
COPY ./target/valaxy-2.0-RELEASE.war /app/app.war
COPY ./pom.xml /app/pom.xml

# Install Maven
RUN apt-get update && \
    apt-get install -y maven

# Build dependencies
RUN mvn clean install

# Expose port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/app.war"]
