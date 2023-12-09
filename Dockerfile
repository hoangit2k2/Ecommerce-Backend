FROM node:18.17.1
WORKDIR /app 
COPY package*.json ./js
RUN npm install
COPY . .  
EXPOSE 5000
CMD ["node", "index.js"]   
