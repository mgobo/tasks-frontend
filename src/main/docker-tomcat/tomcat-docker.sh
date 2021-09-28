#APACHE 8
docker run --name apache-tomcat \
-p 8081:8080 \
-v /Users/mateusgobo/dockerdata/tomcat/webapps/:/usr/local/tomcat/webapps/ \
-v /Users/mateusgobo/dockerdata/tomcat/conf/tomcat-users.xsd:/usr/local/tomcat/conf/tomcat-users.xsd \
-v /Users/mateusgobo/dockerdata/tomcat/conf/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml \
-d apache-tomcat:openjdk8


#APACHE-8 NETWORK
docker run --name apache-tomcat --network jenkins \
-p 8081:8080 \
-v /Users/mateusgobo/dockerdata/tomcat/webapps/:/usr/local/tomcat/webapps/ \
-v /Users/mateusgobo/dockerdata/tomcat/conf/tomcat-users.xsd:/usr/local/tomcat/conf/tomcat-users.xsd \
-v /Users/mateusgobo/dockerdata/tomcat/conf/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml \
-d apache-tomcat:openjdk8

