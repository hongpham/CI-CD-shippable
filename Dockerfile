FROM    centos:centos6
# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
RUN     yum install -y epel-release
# Install Node.js and npm
RUN     yum install -y nodejs npm

# Install app dependencies
COPY . /src
# COPY package.json /src/package.json
RUN cd /src; npm install --production

# Bundle app source

EXPOSE 8080
# Run the app
CMD ["node", "/src/index.js"]
