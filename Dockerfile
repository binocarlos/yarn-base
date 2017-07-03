FROM node:8.1.2
MAINTAINER kaiyadavenport@gmail.com
RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    curl -o- -L https://yarnpkg.com/install.sh | bash
WORKDIR /app
ADD package.json /app/package.json
RUN yarn install