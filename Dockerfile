FROM node:16.17.1
WORKDIR /app 
COPY package*.json ./
RUN yarn install
COPY . .  
EXPOSE 5000
CMD ["node", "index.js"]   
