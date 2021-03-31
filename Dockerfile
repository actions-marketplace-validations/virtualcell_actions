# Base OS
FROM ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y install wget

RUN wget https://vcell.org/webstart/pipeline_files/jdk-8u241-linux-x64.tar.gz && \
    tar -xvzf jdk-8u241-linux-x64.tar.gz && \
    mv jdk1.8.0_241 jdk && \
    wget https://vcell.org/webstart/pipeline_files/apache-maven-3.6.3-bin.tar.gz && \
    tar -xvzf apache-maven-3.6.3-bin.tar.gz && \
    mv apache-maven-3.6.3 maven

ENV JAVA_HOME jdk
ENV PATH ${JAVA_HOME}/bin:$PATH

ENV M2_HOME maven
ENV PATH ${M2_HOME}/bin:$PATH

