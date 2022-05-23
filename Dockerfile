FROM node:14-alpine

WORKDIR usr/src/app

COPY /app .

RUN npm install

CMD ["npm", "start"]