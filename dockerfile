FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y nodejs npm

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
