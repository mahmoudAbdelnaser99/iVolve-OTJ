FROM node:20-alpine AS build
WORKDIR /app

COPY package.json ./
RUN npm install --only=production

COPY . .




FROM alpine:3.20

RUN apk add --no-cache nodejs

WORKDIR /app

COPY --from=build /app ./

EXPOSE 8080
CMD ["node", "app.js"]
