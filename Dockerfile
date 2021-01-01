FROM openjdk:12-alpine
COPY target/*.jar /HelloWorld.jar
EXPOSE 8080
ENTRYPOINT ["java" , "-jar" , "/HelloWorold.jar"]
