# Use the official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json
COPY package*.json ./

# Conditionally copy yarn.lock if it exists
COPY yarn.lock* ./

# Install project dependencies
RUN yarn add -D ts-node-dev
RUN if [ -f "yarn.lock" ]; then yarn install; else yarn install --no-lockfile; fi

# Copy the entire project
COPY . .

# Run the application
CMD [ "yarn", "dev" ]
