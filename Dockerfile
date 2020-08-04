FROM ubuntu:18.04
COPY sources.list /etc/apt/sources.list
COPY jenkins /jenkins
RUN apt-get update
RUN apt-get install openjdk-8-jdk screen git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip libssl-dev bc liblz4-tool vim python python3 p7zip-full rsync wget sudo -y --allow-unauthenticated
EXPOSE 8080
CMD . /jenkins/jenkins.sh

