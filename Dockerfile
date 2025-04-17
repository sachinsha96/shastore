FROM node:latest AS build
WORKDIR app/
COPY . .
RUN npm install
RUN npm run build


FROM nginx:stable
COPY --from=build app/dist/storeapp/browser/ /usr/share/nginx/html
EXPOSE 80
