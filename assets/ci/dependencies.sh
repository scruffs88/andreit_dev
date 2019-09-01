#!/usr/bin/env sh

set -eu
apk update
echo "installing go version 1.8.3..."
apk update && apk upgrade && \

apk add --no-cache ca-certificates
apk add --no-cache --virtual .build-deps \
		bash \
		gcc \
		musl-dev \
		openssl \
		go \

export PATH="/usr/local/go/bin:$PATH"; \
go version
go get github.com/mailhog/mhsendmail
cp /root/go/bin/mhsendmail /usr/bin/mhsendmail
echo 'sendmail_path = /usr/bin/mhsendmail --smtp-addr mailhog:1025' > /usr/local/etc/php/php.ini
pwd
apk add --no-cache gzip
# Add python pip and bash
# Install packages
# Install imagick
# apk update && \
# apk add python py-pip curl unzip libexif udev chromium chromium-chromedriver xvfb && \
# pip install selenium && \
# pip install pyvirtualdisplay
# export DISPLAY=:99
# Xvfb :99 -ac -screen 0 1366x768x24 &>/dev/null &
# sleep 3

# Run selenium standalone server.
# cd $HOME
# SELENIUM="selenium-server-standalone-2.53.1.jar";
# wget -O $SELENIUM http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar
# java -jar $SELENIUM -port 4444 > /dev/null 2>&1 &
# echo "[  OK  ] Starting Selenium on the 4444 port ..."
