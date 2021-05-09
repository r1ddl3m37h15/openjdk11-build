FROM ubuntu:latest

LABEL author="Jeff Suess <jsuess+gh@gmail.com>" \
      summary="Platform for building Java 11 applications with ANT" 

# openjdk-11-jre

ARG DEBIAN_FRONTEND=noninteractive

ENV INSTALL_PKGS openjdk-11-jdk ant git

RUN apt-get update
RUN apt-get -y install $INSTALL_PKGS 