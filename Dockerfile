FROM openjdk:8-jdk-alpine

COPY ./davinci-ui /usr/project/davinci-boot/davinci-ui
COPY ./config /usr/project/davinci-boot/config
COPY ./server/target/davinci-server_3.01-0.3.1-SNAPSHOT.jar /usr/project/davinci-boot/server/target/davinci-server.jar

WORKDIR /usr/project/davinci-boot
CMD ["java", "-jar","./server/target/davinci-server.jar"]
EXPOSE 8081