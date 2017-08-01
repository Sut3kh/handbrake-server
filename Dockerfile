FROM node:4.8.4

# Install Handbrake CLI.
RUN apt-get update \
  && apt-get install -y HandBrake-cli \
  && apt-get clean

# Install handbrake server.
COPY . /usr/local/handbrake-server
WORKDIR /usr/local/handbrake-server
RUN npm install

# Run it.
CMD node app.js
