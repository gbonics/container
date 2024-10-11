FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gbonics
ENV MONGODB_CLUSTER_ADDRESS gbonics.xcklh.mongodb.net
ENV MONGODB_USERNAME gyoung720
ENV MONGODB_PASSWORD 0R8FZmELfPc4cwsv

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]