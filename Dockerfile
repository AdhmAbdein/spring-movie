FROM maven:3.8.6-openjdk-11

WORKDIR /app

COPY pom.xml .
COPY src ./src

# Run tests and build the project
RUN mvn clean package

EXPOSE 8080

CMD ["java", "-jar", "target/*.jar"]
