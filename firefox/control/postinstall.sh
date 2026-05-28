#!/bin/bash

echo "Pobieram Firefoxa..."
mkdir -p /opt/firefox
cd /opt/firefox

curl -L "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=pl" -o firefox.tar.bz2
tar -xf firefox.tar.bz2 --strip-components=1
rm firefox.tar.bz2

chmod +x /usr/bin/firefox

echo "Firefox zainstalowany!"
