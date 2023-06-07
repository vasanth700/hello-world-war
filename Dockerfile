FROM tomcat:9.0.75-jdk8-corretto-al2
RUN mvn -f pom.xml clean install -Dmaven.test.skip
FROM openjdk:8-jdk-alpine
COPY ./dist/hello-world.war ../dist-$version.war
ENTRYPOINT ["java","-jar","/new-$version.war"]
