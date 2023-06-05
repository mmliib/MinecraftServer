#!/bin/bash
# Download runtime environment (Node.js). Ignore this step if you have Node.js 14+ installed already.
wget https://nodejs.org/dist/v14.17.6/node-v14.17.6-linux-x64.tar.gz
# Decompress archive
tar -zxvf node-v14.17.6-linux-x64.tar.gz
# Add program to system PATH
ln -s /node-v14.17.6-linux-x64/bin/node /usr/bin/node
ln -s /node-v14.17.6-linux-x64/bin/npm /usr/bin/npm
# Prepare installation directory
mkdir mcsmanager
cd mcsmanager
# Download the web project
git clone https://github.com/MCSManager/MCSManager-Web-Production.git web
cd web
# Install dependencies
npm install --production
node app.js
