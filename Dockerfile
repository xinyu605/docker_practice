FROM node:14

# Working Directory: Tell Docker all subsequent commands should be executed inside of the folder (default: root folder)
WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# Tell Docker to expose the certain port to local system when this Container is started
# Because something is listening in Image, it has own network isolated from surrounding environment
EXPOSE 80

# `node server.js` should be executed when Container instead of Image is created, so RUN cannot be used here
# CMD means command, it will not be executed when the Image is created, format: ["command", "fileName"]
CMD ["node", "server.js"]
