# Official Node.js LTS image
FROM node:lts

# Create app directory inside the Docker image
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
