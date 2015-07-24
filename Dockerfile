
#############################################################################
# Dockerfile to build an image with Git, php-cli and composer
# Based on yesops/ubuntu:latest                                         
#############################################################################


## Set the base image to Ubuntu
FROM ubuntu:14.04

## File Author / Maintainer
MAINTAINER Software Punt <contact@softwarepunt.nl>

## Update repos and install packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    wget \
    git \
    php5-cli \
    php5-curl \
    php5-xdebug

## Install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
