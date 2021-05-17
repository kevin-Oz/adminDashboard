#FROM node:14.8.0-alpine3.10 AS build-env
#WORKDIR /app
#COPY . ./
#RUN rm -rf node_modules package-lock.json
#RUN npm install && npm run build

FROM nginx:1.20.0
#COPY --from=build-env /dist/AdminDashboard /usr/share/nginx/html
COPY ./dist/AdminDashboard /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]

