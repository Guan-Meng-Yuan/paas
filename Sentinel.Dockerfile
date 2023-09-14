FROM apache/skywalking-java-agent:8.16.0-java8

# copy sentinel jar
COPY libs/sentinel-dashboard-1.8.6.jar /home/sentinel-dashboard.jar

ENV JAVA_OPTS '-Dserver.port=8080 -Dcsp.sentinel.dashboard.server=localhost:8080'

RUN chmod -R +x /home/sentinel-dashboard.jar

EXPOSE 8080

CMD java ${JAVA_OPTS} -jar /home/sentinel-dashboard.jar
