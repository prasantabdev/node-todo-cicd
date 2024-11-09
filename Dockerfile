FROM node:latest
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . . 
EXPOSE 8000
CMD ["node","app.js"]

