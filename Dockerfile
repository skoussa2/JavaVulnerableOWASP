FROM tomcat:jdk8-openjdk

COPY . .

RUN apt-get update ; apt-get install maven -y

RUN mvn clean package ; cp target/*.war /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]
