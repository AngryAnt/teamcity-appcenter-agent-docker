FROM jetbrains/teamcity-minimal-agent:latest

USER root
RUN apt-get update\
 && apt-get install -y zip npm\
 && npm install -g n\
 && n 10.22.0
RUN npm install -g appcenter-cli

ENV SERVER_URL (please specify)
ENV AGENT_NAME (please specify)
ENV APPCENTER_CLI_INSTALL_PATH /usr/local/bin/
EXPOSE 9090/tcp
VOLUME ["/data/teamcity_agent/conf"]
