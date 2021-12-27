FROM node:14

# Working Directory: Tell Docker all subsequent commands should be executed inside of the folder (default: root folder)
WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# Tell Docker to expose the certain port to local system when this Container is started
# Because something is listening in Image, it has own network isolated from surrounding environment
EXPOSE 80

# create anonymous volumes named "temp"
# the data kept in this volume would be lost as Container removed
VOLUME [ "/temp" ]

CMD ["npm", "start"]