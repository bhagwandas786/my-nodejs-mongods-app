#!/bin/bash

# Start MongoDB in background
mongod --dbpath /data/db &

# Wait a bit for Mongo to start
sleep 5

# Start Node.js app
npm start
