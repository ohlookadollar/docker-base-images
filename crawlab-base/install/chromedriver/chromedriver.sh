#!/bin/bash

# version
version="135.0.7049.114"

# deps
apt-get install -y unzip xvfb libxi6 libgconf-2-4

# chrome
wget -q "http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${version}-1_amd64.deb"
apt-get -y install "./google-chrome-stable_${version}-1_amd64.deb"
echo `google-chrome --version`
rm -f "./google-chrome-stable_${version}-1_amd64.deb"


# chromedriver
wget "https://storage.googleapis.com/chrome-for-testing-public/${version}/linux64/chromedriver-linux64.zip"
unzip chromedriver-linux64.zip
mv chromedriver-linux64/chromedriver /usr/local/bin/chromedriver
chown root:root /usr/local/bin/chromedriver
chmod +x /usr/local/bin/chromedriver
