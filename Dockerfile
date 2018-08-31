FROM openjdk:jre-alpine

ADD /target/spring-test.jar /

CMD ["java", "-Xmx151M", "-jar", "/spring-test.jar"]