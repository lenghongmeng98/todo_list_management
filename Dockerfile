FROM openjdk:17-jdk

FROM maven

# Set the working directory inside the container
WORKDIR /app

COPY . .
RUN mvn clean package

# Copy the executable JAR file and any other necessary files
RUN cp target/*.jar /app/app.jar

# Expose the port on which your Spring application will run (change as per your application)
EXPOSE 8080

# Set the command to run your Spring application when the container starts
CMD ["java", "-jar", "/app/app.jar"]