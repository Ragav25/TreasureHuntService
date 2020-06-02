FROM adoptopenjdk/openjdk8:alpine-jre

ENV TZ=America/Denver
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG JAR_FILE=target/treausrehunt-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

COPY startup.sh /
RUN chmod +x startup.sh;

ENTRYPOINT ["/startup.sh"]

EXPOSE 8080