FROM node:8
RUN mkdir /sample
WORKDIR /sample
COPY . /sample
EXPOSE 3000
#COPY ./config.js /sample/config.js
#RUN node hello.js
#WORKDIR /sample
#RUN npm install -g pm2@1.1.3
#CMD ["pm2", "start", "app.js"]
#RUN pm2 start app.js

