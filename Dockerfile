# Use a supported LTS Node.js version with Alpine for smaller images
FROM node:20-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker layer caching
# This ensures npm install is only re-run if dependencies change
COPY package*.json ./

# Install production dependencies only for a smaller, more secure image
RUN npm install --omit=dev

# Copy the rest of your application code
COPY . .

# Inform Docker that the container listens on port 8080 at runtime
EXPOSE 8080

# Define the command to run your application when the container starts
CMD ["node", "index.js"]