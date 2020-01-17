FROM node:10.18-alpine

COPY package.json .

COPY yarn.lock .

RUN yarn install

COPY . .

RUN yarn run generate

ENTRYPOINT [ "node" ]

CMD [ "server.js" ]