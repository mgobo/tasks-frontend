docker run --name jenkins \
--privileged \
--network jenkins \
--network-alias jenkins \
-v /Users/mateusgobo/dockerdata/jenkins_home:/var/jenkins_home \
-p 9100:8080 \
-p 9101:50000 \
-d jenkins/jenkins:2.313-alpine-jdk8

docker run --name jenkins-network \
--privileged \
--network jenkins \
--network-alias jenkins \
-v /Users/mateusgobo/dockerdata/jenkins_home:/var/jenkins_home \
-p 9100:8080 \
-p 9101:50000 \
-d jenkins/jenkins:2.313-alpine-jdk8  