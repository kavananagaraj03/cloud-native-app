# Use a base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and other necessary files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Debug: List files in /app directory
RUN ls -alh /app

# Copy the rest of the project files to the container
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
