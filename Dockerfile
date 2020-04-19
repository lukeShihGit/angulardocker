#Base linux distrubution
FROM alpine:3.11.5 AS base
RUN apk add --no-cache curl wget

#NodeJs
FROM node:10.16.0-alpine as node

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

#Nginx 
FROM nginx:1.17.10-alpine

COPY --from=node /usr/src/app/dist/AngularDockerNginx /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/conf.d/default.conf


