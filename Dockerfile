FROM tomcat:9.0-jdk11

ENV CATALINA_HOME=/usr/local/tomcat
ENV DEPLOY_DIR=$CATALINA_HOME/webapps/

COPY saamfi-rest/target/*.war $DEPLOY_DIR

EXPOSE 9091

# Ejecutar Tomcat
CMD ["catalina.sh", "run"]
