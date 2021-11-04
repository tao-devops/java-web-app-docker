#FROM tomcat:8.0.20-jre8
# Dummy text to test 
#COPY web-app-docker-swarm/target/java-web-app-1.0.war /usr/local/tomcat/webapps/java-web-app-1.0.war
FROM nginx:latest
RUN apt update
RUN apt install git -y
WORKDIR  /usr/share/nginx/html
RUN rm -rf *
RUN git clone https://github.com/remy/html5demos
WORKDIR html5demos/www/
ADD svg-clock/  /usr/share/nginx/html
EXPOSE 80
