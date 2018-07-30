##########################################################
# Dockerfile to build Nginx Installed Containers         #
# Based on Ubuntu					 #
##########################################################

# Set the base image to Ubuntu
FROM tomcat

# File Author / Maintainer
MAINTAINER kamal

# Update the repository
RUN apt-get update -y

# Install necessary tools
RUN apt-get install -y telnet

# Volume mount point 
VOLUME /usr/local/tomcat/logs

# Copy a configuration file from the current directory
ADD Spring3HibernateApp.war /usr/local/tomcat/webapps/app.war

# Define Work Directory
WORKDIR /usr/share/tomcat/webapps
