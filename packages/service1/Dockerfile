# Official Node.js LTS image
FROM node:lts
<<<<<<< HEAD
# Create app directory inside the Docker image
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install app dependencies
RUN npm install
=======

# Create app directory inside the Docker image
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

>>>>>>> master
COPY . .

EXPOSE 3000

# Use arguments to pass MongoDB credentials
ARG MONGODB_USERNAME
ARG MONGODB_PASSWORD
ARG MONGODB_ENDPOINT

# Use environment variable to store the MongoDB connection URL
ENV MONGODB_URL=mongodb://${MONGODB_USERNAME}:${MONGODB_PASSWORD}@${MONGODB_ENDPOINT}

<<<<<<< HEAD
CMD [ "node", "index.js" ]
=======
CMD [ "node", "index.js" ]
>>>>>>> master
