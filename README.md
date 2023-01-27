# docker-mirai-api-http

TODO:

2. 配置文件缺失

## Ussage

```bash
git clone https://github.com/EUye9IM/docker-mirai-api-http.git
cd docker-mirai-api-http
docker build --rm -t mirai-http:latest .
docker run -it -p 8080:8080 --name=mirai-http mirai-http
```

网络环境不好的话用 Dockerfile.CN ，添加了 alpine镜像(mirrors.tuna.tsinghua.edu.cn) 与 github 镜像(hub.nuaa.cf)

```bash
cd docker-mirai-api-http
docker build --rm -t mirai-http:latest -f Dockerfile.CN .
docker run -it -p 8080:8080 --name=mirai-http mirai-http
```
