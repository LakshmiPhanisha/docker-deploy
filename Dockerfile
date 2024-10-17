# Use the official OpenJDK image as a parent image
FROM openjdk:17-slim

# Create a volume for temporary files
VOLUME /tmp

# Copy the JAR file from the target directory
COPY target/CICD-github-actions-0.0.1-SNAPSHOT.jar myapp.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "myapp.jar"]