# Specify Base Image
FROM node:18-alpine

# Work Directory
WORKDIR /usr/app

# COPY Files
COPY ./ ./

# Install Dependencies
RUN npm install

# Startup Command
CMD ["npm", "start"]
