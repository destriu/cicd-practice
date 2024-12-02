FROM maven:3.9.9 as build
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:17-oracle
WORKDIR /app
COPY --from=build /app/target/demo.app.jar /apps/
EXPOSE 8080
CMD ["java", "-jar", "demo.app.jar"]