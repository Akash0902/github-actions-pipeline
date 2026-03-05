# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY app/package*.json ./

# Install dependencies
RUN npm install --production

# Copy application code
COPY app/ .

# Expose application port
EXPOSE 3000

# Start application
CMD ["node", "server.js"]
