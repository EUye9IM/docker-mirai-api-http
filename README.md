# docker-mirai-api-http



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

之后出现提示符之后，使用 autologin 设定完自动登录之后，stop退出。此后可以docker start mirai-http 启动。

要编辑配置文件之类的start之后exec sh，改完restart

默认配置文件没有认证，注意不要把端口暴露于公网

> wsl 下使用，请适当使用 --network=host