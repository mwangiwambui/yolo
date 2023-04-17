FROM node:alpine
LABEL maintainer="Naomi Mwangi <wambui54mwangi@gmail.com"

WORKDIR /app/client

COPY ./client/package*.json ./

COPY ./client .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

WORKDIR /app/backend

COPY ./backend/package*.json ./

COPY ./backend .

RUN npm install

EXPOSE 5000

CMD ["npm", "start"]
