FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run dev

CMD [ "npx", "serve", "dist" ]