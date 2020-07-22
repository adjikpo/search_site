FROM node:13.10 as node

# Create app directory
RUN mkdir /home/node/app
WORKDIR  /home/node/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json .

RUN npm install --global

COPY . .

#RUN npm run build

EXPOSE 8080

CMD [ "npm", "start" ]