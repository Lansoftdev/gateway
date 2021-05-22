FROM openjdk:11
ADD build/libs/gateway*.jar app.jar
ENTRYPOINT ["java", "-jar", "-agentlib:jdwp=transport=dt_socket,address=*:8899,server=y,suspend=n", "/app.jar"]
