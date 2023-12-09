FROM node:18.17.1
WORKDIR /app 
COPY package*.json ./
RUN npm install
RUN npm uninstall bcrypt
RUN npm i bcrypt
COPY . .  
EXPOSE 3001
CMD ["node", "index.js"]   
