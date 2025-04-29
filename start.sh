#!/bin/bash

# This script is used by Render to start the application

# Build the application
echo "Building the application..."
npm run build

# Run any migrations
echo "Running database migrations..."
npm run db:push

# Start the production server
echo "Starting the server..."
node dist/index.js