FROM gradle:5.4-jdk8

EXPOSE 8080

WORKDIR /app
WORKDIR /tmp
COPY settings.gradle .
COPY gradle.properties .
COPY build.gradle .
COPY src src

RUN gradle --no-daemon bootJar

COPY ./build/libs /app

WORKDIR /app
ENTRYPOINT java -jar sideboarder*.jar