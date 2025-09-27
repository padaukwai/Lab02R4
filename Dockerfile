FROM openjdk:19
COPY ./target/DevOpsClassRoom1-1-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar","DevOpsClassRoom1-1-jar-with-dependencies.jar"]
