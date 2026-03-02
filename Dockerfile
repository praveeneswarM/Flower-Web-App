FROM node AS praveen
WORKDIR /app
COPY . .
RUN npm install

# RUN npm run build

# FROM nginx
# WORKDIR /usr/share/nginx/html
# COPY --from=praveen /app/dist/* .
# EXPOSE 83
# CMD ["nginx","-g","daemon off;"]
EXPOSE 3015
CMD ["node","app.js"]
