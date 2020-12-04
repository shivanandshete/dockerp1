FROM alpine:3.12
RUN apk add openjdk8-jre
WORKDIR /opt
ADD https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.60/bin/apache-tomcat-8.5.60.tar.gz
RUN tar -xvf apache-tomcat-8.5.60.tar.gz
RUN mv apache-tomcat-8.5.60 tomcat8
RUN mkdir /tomcat8/webapps/app
copy index.html /tomcat/webapp/app
EXPOSE 8080
CMD ["./tomcat8/bin/catalina.sh","run"]