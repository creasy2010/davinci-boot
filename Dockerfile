FROM openjdk:8-jdk-alpine

COPY ./davinci-ui /usr/project/davinci-boot/davinci-ui
COPY ./config /usr/project/davinci-boot/config
COPY ./bin /usr/project/davinci-boot/bin
COPY ./lib /usr/project/davinci-boot/lib
COPY ./server/target/davinci-server_3.01-0.3.1-SNAPSHOT.jar /usr/project/davinci-boot/server/target/davinci-server.jar
ENV DAVINCI3_HOME=/usr/project/davinci-boot/
WORKDIR /usr/project/davinci-boot
EXPOSE 8081
CMD ["java", "-jar","./server/target/davinci-server.jar"]