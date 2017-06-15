FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /home/john/openshift/javahello/javajohntest/target
ADD *.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]
