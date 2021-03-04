FROM node:15.8.0-alpine3.10
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./

RUN npm install
# Copy app source code
COPY . .

#Expose port and start application
EXPOSE 7000
CMD [ "npm", "start" ]