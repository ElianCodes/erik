FROM node:14.16-buster

# Install Yarn & NPM
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get update \
    && apt-get install -y nodejs
RUN npm install -g npm@latest
RUN npm install --global yarn --force

# Install Expo-cli
RUN npm install expo-cli --global
