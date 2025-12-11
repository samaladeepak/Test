FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY src ./src
COPY index.js ./
EXPOSE 8001
#CMD [ "node", "src/server.js" ]
CMD ["sh", "-c", "node src/index.js & sleep 300"]
