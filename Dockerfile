# Use a Node.js base image suitable for your project
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining source code to working directory
COPY . .

# Expose port (if applicable) - This might not be necessary for Vite
# EXPOSE 3000

# Command to build the application
CMD ["npm", "run", "build"]
