FROM tomcat:9.0
EXPOSE 8080
COPY /var/lib/jenkins/workspace/BankPackage/target/bank##2.1.0.local.war /usr/local/tomcat/webapps/
HEALTHCHECK CMD curl -fail http://localhost:8080/bank/api/v1/health || exit 1
