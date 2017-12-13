FROM centos:centos7

MAINTAINER First Line Support Belgrade

# Setup proxy friendly yum repos
#COPY fastestmirror.conf /etc/yum/pluginconf.d/fastestmirror.conf
#COPY centos_mirrors_os /etc/yum.repos.d/centos_mirrors_os
#COPY centos_mirrors_updates /etc/yum.repos.d/centos_mirrors_updates
#COPY centos_mirrors_extras /etc/yum.repos.d/centos_mirrors_extras

# Ensure we got an up-to-date system without caches
#ENV UPDATED=20170822
RUN yum -y update && yum clean all

# set up internal ca, rpm keys, add yum repo
#COPY InternalCACert.pem /etc/pki/ca-trust/source/anchors/InternalCA.crt
#RUN update-ca-trust enable && update-ca-trust extract
##COPY pgcyum.repo.office /etc/yum.repos.d/pgcyum.repo

#ADD gpgkeys.tar /tmp/gpgkeys
#RUN rpm --import /tmp/gpgkeys/*

# Install basics
#RUN yum -y install bzip2 pbzip2 sudo tar telnet wget unzip gosu dumb-init && yum clean all
#RUN sed -e "/.*requiretty/d" -e "/.*visiblepw/d" -i /etc/sudoersi
