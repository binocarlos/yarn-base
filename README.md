# yarn-base

`node:8.1.2` with yarn and local module cache for quick installs

## Dockerfile

```
FROM node:8.1.2
MAINTAINER kaiyadavenport@gmail.com
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y yarn
WORKDIR /app
ADD package.json /app/package.json
RUN yarn install
```

## node packages

```json
{
  "dependencies": {
    "axios": "^0.15.3",
    "http-proxy": "^1.16.2",
    "immutability-helper": "^2.0.0",
    "react": "^15.6.1",
    "react-dom": "^15.6.1",
    "react-flexbox-grid": "^1.1.3",
    "react-lite": "^0.15.37",
    "react-redux": "^5.0.5",
    "react-toolbox": "^2.0.0-beta.11",
    "redux": "^3.7.1",
    "redux-act": "^1.3.0",
    "redux-little-router": "^13.2.0",
    "redux-logger": "^2.7.4",
    "redux-saga": "^0.15.4",
    "autoprefixer": "^6.4.0",
    "babel-core": "^6.13.2",
    "babel-eslint": "^7.1.1",
    "babel-loader": "^6.2.4",
    "babel-plugin-react-transform": "^2.0.2",
    "babel-plugin-transform-runtime": "^6.15.0",
    "babel-preset-es2015": "^6.13.2",
    "babel-preset-react": "^6.5.0",
    "babel-preset-stage-0": "^6.5.0",
    "babel-preset-stage-2": "^6.13.0",
    "babel-register": "^6.24.1",
    "babel-polyfill": "^6.3.14",
    "copy-webpack-plugin": "^4.0.1",
    "css-loader": "^0.26.1",
    "express": "^4.13.4",
    "extract-text-webpack-plugin": "^1.0.1",
    "js-yaml": "^3.8.2",
    "json-loader": "^0.5.4",
    "postcss-cssnext": "^2.9.0",
    "postcss-each": "^0.9.3",
    "postcss-import": "^9.1.0",
    "postcss-loader": "^1.3.3",
    "postcss-mixins": "^5.4.1",
    "postcss-reporter": "^3.0.0",
    "react-toolbox-themr": "^1.0.2",
    "react-transform-catch-errors": "^1.0.2",
    "react-transform-hmr": "^1.0.4",
    "redbox-react": "^1.3.3",
    "style-loader": "^0.13.1",
    "transfer-webpack-plugin": "^0.1.4",
    "webpack": "^1.14.0",
    "webpack-bundle-size-analyzer": "^2.2.0",
    "webpack-dev-middleware": "^1.6.1",
    "webpack-hot-middleware": "^2.10.0",
    "body-parser": "^1.17.2",
    "check-options": "^1.1.0",
    "cookie-parser": "^1.4.3",
    "ejs": "^2.5.6",
    "express": "^4.15.3",
    "morgan": "^1.8.2",
    "request": "^2.81.0",
    "tape": "^4.6.3",
    "async": "^2.4.1",
    "connect-redis": "^3.2.0",
    "express": "^4.14.0",
    "express-session": "^1.14.2",
    "http-proxy": "^1.16.2",
    "ioredis": "^2.4.3",
    "knex": "^0.13.0",
    "minimist": "^1.2.0",
    "nats": "^0.7.20",
    "nats-hemera": "^1.3.2",
    "hemera-sql-store": "^1.0.24",
    "hemera-joi": "^1.1.4",
    "passport": "^0.3.2",
    "pg": "^6.1.2"

  }
}
```
