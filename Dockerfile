FROM node:16-alpine

# Create app directory
WORKDIR /usr/app

# Install app dependencies
COPY package.json .
COPY yarn.lock .
RUN npm install

# Copy app files
COPY . .

CMD [ "npm", "run", "local:run" ]