FROM maven:3.9-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .
COPY src ./src

# Run tests and build the project
RUN mvn clean package

EXPOSE 8080

CMD ["java", "-jar", "target/*.jar"]
