FROM node:8
RUN mkdir /sample
WORKDIR /sample
COPY . /sample
#COPY ./config.js /sample/config.js
EXPOSE 3000
#RUN node hello.js
WORKDIR /sample
RUN npm install pm2 -g
#RUN pm2 start app.js

