FROM openjdk:11
COPY ./target/0.1.0.2-1.0-SNAPSHOT-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "0.1.0.2-1.0-SNAPSHOT-jar-with-dependencies.jar"]
