# 🚀 Node.js + PostgreSQL App with Docker Compose

This project demonstrates how to containerize a Node.js application with a PostgreSQL database using Docker Compose.

## 📁 Project Structure
```
├── docker-compose.yml
├── Dockerfile
├── package.json
└── src
    ├── app.js
    └── db.js
```
---
## 📦 Setup
## 1. Clone the repository
```bash
git clone https://github.com/Ibrahim-Adel15/docker6.git
cd docker6
```
## 2.  🐳 create docker compose  docker-compose.yml
```bash
version: '3.8'

services:
  app:
    build: .
    ports:
      - "3000:3000"
    depends_on:
      - db
    environment:
      DB_HOST: ${DB_HOST}
      DB_USER: ${DB_USER}
      DB_PASSWORD: ${DB_PASSWORD}
      DB_NAME: ${DB_NAME}

  db:
    image: postgres:15-alpine
    ports:
      - "5432:5432"
    environment:
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DB}
    volumes:
      - pgdata:/var/lib/postgresql/data

volumes:
  pgdata:
```

## 3. Environment Variables .env
```
DB_HOST=db
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=postgres

POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=postgres
```
## 4. Build and Run the containers
```
docker-compose up --build
```
![alt text](images/image-1.png)
![alt text](images/Untitled.png)

## 5. access Application on port 3000

![alt text](images/image.png)



