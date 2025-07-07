FROM node:16

COPY . .

RUN npm install

COPY . .

# Inform Docker that the container listens on port 8080 at runtime
EXPOSE 8080

# Define the command to run your application when the container starts
CMD ["node", "index.js"]