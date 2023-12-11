FROM node:20-alpine3.17

WORKDIR /app

COPY ./server/package.json .

RUN npm i

COPY . .

EXPOSE 3011

CMD ["npm", "run", "dev"]