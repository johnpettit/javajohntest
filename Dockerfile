# FROM frolvlad/alpine-oraclejdk8:slim
# VOLUME /home/john/openshift/javahello/javajohntest/target
# ADD *.jar app.jar
# RUN sh -c 'touch /app.jar'
# ENV JAVA_OPTS=""
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]

FROM java:8
# ARG JAR="target/*.jar"
# ARG PORT=8080
EXPOSE 8080
ADD target/*.jar server.jar
ENTRYPOINT ["java"]
CMD ["-Xms750m", "-Xmx750m", "-jar", "server.jar", "--spring.profiles.active=local"]

