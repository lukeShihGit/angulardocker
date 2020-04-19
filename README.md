# Description 
使用 Docker 建立 Angualr with Nginx 的映像檔案，建立出 Container 建置 Angular 

# Environment 
- Node: 10.16.0
- Angular: 8.0.3
- Docker: 2.2.0.5 
- Docker Nginx Image: 1.17.10
- Alpine: 3.11.5

# Commands 

1.  建立 Docker image 
docker build -t "Docker Image Name" .

2. 列出 docker imgaes 
docker image ls 
![List images](https://imgur.com/cmlinO5.jpg)

3.  建立 Container
docker run -p 3000:80 -it 74976fa41489

Open browser localhost:3000 

