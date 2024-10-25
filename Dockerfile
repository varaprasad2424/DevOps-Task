# Use an official Node.js runtime as a parent image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose port
EXPOSE 3000

# Define the command to run the app
CMD ["node", "index.js"]

