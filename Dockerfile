FROM docker pull sadovnikov/centos-base

VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

# Download and install TeamCity to /opt
RUN wget -qO- http://download.jetbrains.com/teamcity/TeamCity-8.1.5.tar.gz | tar xz -C /opt

EXPOSE 8111
CMD ["/opt/TeamCity/bin/teamcity-server.sh", "run"]
