FROM openjdk:latest
COPY ./target/DevOpsClassRoom1-1.0-SNAPSHOT-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "DevOpsClassRoom1-1.0-SNAPSHOT-jar-with-dependencies.jar"]