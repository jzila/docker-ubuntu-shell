# Docker container with with simple things for tesing things and things.

FROM ubuntu:14.04
MAINTAINER Matthew Sawasy "sawasy@gmail.com"

# Update repos!
RUN apt-get -q update

# Patch All the things!
RUN apt-get -qy upgrade

# Install some fun things!
RUN apt-get install -qy --force-yes zsh git vim

# Add the URL for the repo's tarball as a mount point
ADD https://github.com/sawasy/oh-my-zsh/tarball/master /

# Untar the repo-slash-mountpoint
RUN tar -xvf master -C / && mv /sawasy-oh-my-zsh-* /.oh-my-zsh/
# Set us up the bomb!
ADD ./zshrc /.zshrc
