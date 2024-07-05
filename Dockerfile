# Dockerfile

# Use an OpenJDK base image
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy application artifacts
COPY ./target/valaxy-2.0-RELEASE.war /app/app.war





# Expose port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/app.war"]
