FROM node:lts-buster
RUN git clone https://github.com/Emmywhite-hacker/EMMY-MD/root/ikEMMY
WORKDIR /root/ikEMMY
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
