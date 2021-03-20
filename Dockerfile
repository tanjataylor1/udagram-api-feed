FROM node:14
RUN apt-get update && apt-get install zip
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 8100
RUN npm i -g typescript
RUN npm run build
CMD ['npm','start']