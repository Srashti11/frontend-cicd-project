# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the built Angular app to the container
COPY . .

# Expose the port the app runs on
EXPOSE 4200

# Define the command to run your Angular app
CMD ["npm", "start"]
