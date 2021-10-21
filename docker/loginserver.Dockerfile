FROM node:16-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm i --production
# Login server port
EXPOSE 1115/udp
# Start both of the servers
CMD [ "node", "./out/loginserver.js", "--max-old-space-size 200"  ]
