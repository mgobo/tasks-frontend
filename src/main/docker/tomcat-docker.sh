#TOMITRIBE
docker run -it --name tomcat-ee \
-p 8081:8080 \
-v /Users/mateusgobo/dockerdata/tomcat/webapps:/usr/local/tomee/webapps/ \
--rm tomee:8-jre-8.0.8-plus

#APACHE 8
docker run --name apache8 \
-p 8081:8080 \
-v /Users/mateusgobo/dockerdata/tomcat/webapps/:/apache8/webapps/ \
-d apache:tomcat


#APACHE-8 NETWORK
docker run --name apache8 --network jenkins \
-p 8081:8080 \
-v /Users/mateusgobo/dockerdata/tomcat/webapps/:/apache8/webapps/ \
-d apache:tomcat

