FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webappssssssssss
COPY ./*.war /usr/local/tomcat/webapps
