#specify base image
FROM node:18-alpine

#create working diresctory
WORKDIR /usr/app

#copy file into container
COPY ./ ./
#stat dependecies
RUN npm install

#start web server
CMD ["npm","start"]