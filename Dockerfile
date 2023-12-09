FROM node:18.17.1
WORKDIR /app 
COPY package*.json ./
RUN npm install
COPY . .  
EXPOSE 3001
CMD ["node", "index.js"]   
