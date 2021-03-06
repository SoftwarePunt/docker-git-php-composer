
#############################################################################
# Dockerfile to build an image with Git, php-cli and composer
# Based on yesops/ubuntu:latest                                         
#############################################################################

## Set the base image to Ubuntu
FROM ubuntu:14.04

## File Author / Maintainer
MAINTAINER Software Punt <contact@softwarepunt.nl>

## Update locales
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

## Update repos and install packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-client \
    curl \
    ca-certificates \
    wget \
    git \
    php5-cli \
    php5-mysql \
    php5-xcache \
    php5-json \
    php5-mcrypt \
    php5-gd \
    php5-curl \
    php5-intl \
    php5-redis \
    php5-xdebug

## Install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
