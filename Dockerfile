FROM node:slim



# set directory "cd /app"
WORKDIR /app

# install npm dependencies
COPY package.json /app/package.json
RUN npm install

# copy code
COPY index.js /app/index.js
COPY package.json /app/package.json
RUN npm install 

# the program to run
ENTRYPOINT [ "npm", "start" ]