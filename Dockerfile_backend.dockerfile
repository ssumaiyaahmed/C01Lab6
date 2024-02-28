# Use an official Node.js image as the base image
FROM node:20.0.0-alpine AS backend

# Set the working directory in the container
WORKDIR /app/quirknotes/backend

# Install backend dependencies
COPY quirknotes/backend/package*.json ./

#Install all dependencies
RUN npm install

# Copy the rest of the backend application code into the container
COPY quirknotes/backend ./

# Expose port 3000 for the backend server
EXPOSE 3000

# Command to run the backend server
CMD ["npm", "start"]