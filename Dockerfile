FROM sadovnikov/container-base
MAINTAINER Viktor Sadovnikov <viktor@jv-ration.com>

VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

EXPOSE 8111

# Download and install TeamCity to /opt
RUN wget -qO- http://download.jetbrains.com/teamcity/TeamCity-8.1.5.tar.gz | tar xz -C /opt
