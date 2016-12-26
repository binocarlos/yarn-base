# yarn-base

Base image with node:5.2.0-slim + yarn + phantomjs

```
FROM node:5.2.0-slim
MAINTAINER kaiyadavenport@gmail.com
ENV PHANTOMJS_VERSION 1.9.7
RUN \
  curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y yarn wget libfreetype6 libfontconfig bzip2 && \
  wget -q --no-check-certificate -O /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  tar -xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp && \
  rm -f /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/bin/phantomjs && \
  apt-get autoremove -y && \
  apt-get clean all
```