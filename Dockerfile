FROM openjdk:12-alpine
COPY target/*.jar /HelloWorld.jar
EXPOSE 8080
CMD ["java" , "-jar" , "/HelloWorld.jar"]
