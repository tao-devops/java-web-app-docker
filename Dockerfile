FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY web-app-docker-swarm/target/java-web-app-1.0.war /usr/local/tomcat/webapps/java-web-app-1.0.war
