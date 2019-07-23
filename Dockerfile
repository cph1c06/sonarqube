FROM sonarqube:latest

ENV SONARQUBE_HOME /opt/sonarqube

RUN wget "http://repo.maven.apache.org/maven2/org/sonarsource/java/sonar-java-plugin/5.9.2.16552/sonar-java-plugin-5.9.2.16552.jar" \
    && wget "http://repo.maven.apache.org/maven2/org/sonarsource/javascript/sonar-javascript-plugin/5.2.1.7778/sonar-javascript-plugin-5.2.1.7778.jar" \
    && wget "http://repo.maven.apache.org/maven2/org/sonarsource/typescript/sonar-typescript-plugin/1.9.0.3766/sonar-typescript-plugin-1.9.0.3766.jar" \
    && mv *.jar $SONARQUBE_HOME/extensions/plugins \
    && ls -lah $SONARQUBE_HOME/extensions/plugins
