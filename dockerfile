FROM anapsix/alpine-java
EXPOSE 8082
COPY webapp/target/webapp.war /webapp.war
COPY server/target/server.jar /server.jar 

CMD ["java", "-jar","server.jar", "webapp.war"]
