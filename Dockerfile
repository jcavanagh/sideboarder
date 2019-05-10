FROM gradle:5.4-jdk8

WORKDIR /tmp
COPY settings.gradle .
COPY gradle.properties .
COPY build.gradle .
COPY src src

RUN gradle --no-daemon bootJar

FROM node:current-slim
WORKDIR /tmp/public
COPY public .
RUN npm i && npm run build

FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY --from=0 /tmp/build/libs .
COPY --from=1 /tmp/public/build public

CMD java -jar sideboarder*.jar