# Use a lightweight Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install a simple HTTP server
RUN npm install -g http-server

# Expose port 3000
EXPOSE 3002

# Command to run the application
CMD ["http-server", "--port", "3002"]
