FROM alpine:3.12
WORKDIR /opt
ADD https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.60/bin/apache-tomcat-8.5.60.tar.gz .
RUN tar -xvf apache-tomcat-8.5.60.tar.gz
RUN mv apache-tomcat-8.5.60 tomcat8
RUN mkdir ./tomcat8/webapps/app
ADD index.html ./tomcat8/webapps/app
EXPOSE 8080
CMD ["./tomcat8/bin/startup.sh","run"]