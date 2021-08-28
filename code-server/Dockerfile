FROM codercom/code-server:latest

COPY sources.list /etc/apt/sources.list

RUN apt update; \
    apt install -y unzip yarn; \
    yarn config set registry https://registry.npm.taobao.org; \
    rm -rf /root/.cache/;