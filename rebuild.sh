#!/usr/bin/env bash
docker rm -f spring-test-container
docker rmi -f spring-test-image
mvn clean package
docker build . -t spring-test-image
docker run -p 8080:8080 --name spring-test-container spring-test-image
docker logs -f spring-test-container