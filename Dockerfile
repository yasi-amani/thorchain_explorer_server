FROM node:20

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production

COPY . .
EXPOSE ${PORT}

ENV NETWORK=${NETWORK}

CMD [ "node", "server.js" ]