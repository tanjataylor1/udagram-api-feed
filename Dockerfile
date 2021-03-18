FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 8100

RUN npm run build
CMD ['npm','start']