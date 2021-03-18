FROM node:14.x

RUN npm i
RUN npm run build
CMD ['npm','start']