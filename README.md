# Apache Web Server Docker Project

This project contains a simple Docker setup for running an **Apache HTTP Server** using a custom `Dockerfile`.

## 📦 Project Structure



## 🚀 Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system

### Build the Docker Image

```bash
docker build -t apache-server .

docker  images

docker run -dit --name apache-container -p 80:80 apache-server

docker  ps -a

docker stop apache-container
docker rm apache-container

Let me know if you want to include instructions for Docker Compose, SSL support, or other features!
