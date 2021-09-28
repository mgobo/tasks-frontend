FROM centos
RUN yum install java-1.8.0-openjdk -y \
&& yum install wget -y \
&& yum install unzip -y \ 
&& java -version \ 
&& yum clean all

WORKDIR /

RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.71/bin/apache-tomcat-8.5.71.zip \
&& unzip apache-tomcat-8.5.71.zip \
&& rm -rf apache-tomcat-8.5.71.zip \
&& mv apache-tomcat-8.5.71 apache8 \
&& chmod +x apache8/bin/*.sh 

EXPOSE 8080

CMD ["/apache8/bin/catalina.sh", "run"] 