FROM node:20.10.0

WORKDIR /app

COPY ./package.json .
RUN npm install

COPY ./models ./models
COPY ./sequelize ./sequelize
COPY ./index.js .
COPY ./healthcheck .
COPY .env /app/.env

EXPOSE 3000

CMD ["npm", "start"]
