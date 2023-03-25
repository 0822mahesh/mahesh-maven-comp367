FROM openjdk
COPY target/*.war /
EXPOSE 8000
ENTRYPOINT ["java","-war","/my-app-1.0-SNAPSHOT.war"]
