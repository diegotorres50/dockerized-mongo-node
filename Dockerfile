FROM node:8

WORKDIR /usr/src/app

COPY package.json /usr/src/app

COPY package-lock.json /usr/src/app

COPY ecosystem.config.js /usr/src/app

COPY process.yml /usr/src/app

RUN npm install

RUN npm install pm2 -g

COPY . /usr/src/app

EXPOSE 3000

CMD ["pm2-runtime", "process.yml"]