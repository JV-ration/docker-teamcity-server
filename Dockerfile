FROM sadovnikov/centos-base

VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

# Download and install TeamCity to /opt
RUN wget -qO- http://download.jetbrains.com/teamcity/TeamCity-8.1.5.tar.gz | tar xz -C /opt
