FROM debian:stretch
LABEL name="es1501"
LABEL version="1.0"
LABEL decription="image for ES 15.01"
# Update system
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install curl libcurl4-gnutls-dev libxtst6 libglib2.0-dev libgtk2.0-dev lsb initscripts

# Define ISE environment
ENV ISE_EIFFEL="/usr/local/Eiffel_15.01"
ENV ISE_LIBRARY="/usr/local/Eiffel_15.01"
ENV ISE_PLATFORM="linux-x86-64"
# Update PATH env variable
ENV PATH=$PATH:$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin

# Add ISE ES 15.01
ADD Eiffel_15.01_gpl_96535-linux-x86-64.tar.bz2 /usr/local

# Set work dir
WORKDIR /

