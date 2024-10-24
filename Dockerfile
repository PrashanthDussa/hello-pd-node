# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the application with nodemon (via docker-compose.yml)
CMD ["npm", "run", "dev"]
