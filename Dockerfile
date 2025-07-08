# Use a stable Node.js image based on Debian Bullseye (MongoDB compatible)
FROM node:18-bullseye

# Create app directory
WORKDIR /usr/src/app

# Install MongoDB dependencies
RUN apt update && \
    apt install -y curl gnupg wget && \
    curl -fsSL https://pgp.mongodb.com/server-6.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-server-6.0.gpg && \
    echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-6.0.list && \
    apt update && \
    apt install -y mongodb-org && \
    mkdir -p /data/db

# Copy Node.js dependencies and install them
COPY package*.json ./
RUN npm install

# Copy everything else (including your public/index.html)
COPY . .

# Expose app port
EXPOSE 5000

# Start MongoDB and Node server together
CMD mongod --dbpath /data/db --bind_ip_all & node server.js

