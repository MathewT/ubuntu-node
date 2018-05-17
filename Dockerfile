FROM ubuntu:18.04

# Create app directory
WORKDIR /usr/src/app

RUN mkdir $HOME/.ssh

RUN apt-get update -y && apt-get -y install curl python build-essential git ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs && npm i npm@latest -g

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# CMD [ "npm", "start" ]
CMD [ "/bin/bash" ]