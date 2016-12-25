# yarn-base

Base image with node:5.2.0-slim + yarn

```
FROM node:5.2.0-slim
MAINTAINER kaiyadavenport@gmail.com
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install yarn
```