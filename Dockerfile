FROM node:18.3.0-alpine3.14

# Create app directory

RUN mkdir -p /home/app

COPY . /home/app

EXPOSE  3000

CMD [ "node", "/home/app/index.js" ]