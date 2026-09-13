FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y maven && mvn -q -DskipTests package
CMD ["java","-cp","target/classes:target/dependency/*","App"]
