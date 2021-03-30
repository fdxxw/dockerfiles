FROM docker:19.03.14
MAINTAINER fdxxw <ucmxxw@163.com>
# ali repo
RUN echo -e "http://mirrors.aliyun.com/alpine/latest-stable/main\nhttp://mirrors.aliyun.com/alpine/latest-stable/community" > /etc/apk/repositories



RUN apk update && apk add libstdc++ curl ca-certificates bash git g++ make nodejs npm yarn tzdata vim openjdk11 maven python2 tree && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    yarn config set registry https://registry.npm.taobao.org && \
    yarn global add @vue/cli && \
    rm -rf /root/.cache
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH $PATH:$JAVA_HOME/jre/bin:$JAVA_HOME/bin

COPY settings.xml /root/.m2/settings.xml
COPY docker_push.sh /usr/bin/docker_push
RUN  chmod +x /usr/bin/docker_push

RUN mkdir -p /etc/docker && echo -e '{"insecure-registries": ["192.168.13.91:5000","hub-mirror.c.163.com"],"registry-mirrors":["https://hub-mirror.c.163.com/", "http://192.168.13.91:5000"]}' > /etc/docker/daemon.json

