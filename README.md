# juliacn/docker:1.0

## JuliaCN docker image

https://hub.docker.com/r/juliacn/docker/

[docker入门](https://docs.docker.com/get-started/)

## 有用的一行码命令

进入bash
```
$ docker run --rm -it juliacn/docker:1.0 bash
root@69224e050ced:/home#
```

进入Jupyter Notebook
```
$ docker run -p 8888:8888 --rm -it juliacn/docker:1.0 
[I 17:56:12.219 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[W 17:56:12.385 NotebookApp] All authentication is disabled.  Anyone who can connect to this server will be able to run code.
[I 17:56:12.391 NotebookApp] Serving notebooks from local directory: /home
[I 17:56:12.391 NotebookApp] The Jupyter Notebook is running at:
[I 17:56:12.391 NotebookApp] http://(4b31f892a266 or 127.0.0.1):8888/
[I 17:56:12.391 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
..
```

进入Jupyter Notebook (加上本地文件夹`home`）
```
$ docker run -p 8888:8888 -v `pwd`/home:/home --rm -it juliacn/docker:1.0 
[I 18:00:13.002 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[W 18:00:13.174 NotebookApp] All authentication is disabled.  Anyone who can connect to this server will be able to run code.
[I 18:00:13.183 NotebookApp] Serving notebooks from local directory: /home
[I 18:00:13.183 NotebookApp] The Jupyter Notebook is running at:
[I 18:00:13.183 NotebookApp] http://(9e35d3b205d3 or 127.0.0.1):8888/
[I 18:00:13.183 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
```

由于是本地个人电脑使用，我们不需要密码。用浏览器打开http://127.0.0.1:8888/.
