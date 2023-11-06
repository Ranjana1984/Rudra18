#Use as base image
FROM openjkd:17

#set the work directory
DOCDIR /app

#Expose port
EXPOSE 8088

#Copy the JAR file into the container
COPY target/docker-0.0.1-SNAPSHOT.jar /app/app.jar

#Command to run the application
ENTRYPOINT ["java","-jar", "app.jar"]
