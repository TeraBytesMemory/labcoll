# Requirements

- postgresql
- ruby (>=2.3.1)
- ruby on rails (>=4.2.6)
- node.js

# Build

## シークレットキーとAPIキーの設定
```sh
export SECRET_KEY_BASE_DEV = "長いランダムな文字列"
export SECRET_KEY_BASE_TEST = "長いランダムな文字列"
export SECRET_KEY_BASE = "長いランダムな文字列"
export FACEBOOK_APP_ID = "facebookログインのAPI ID"
export FACEBOOK_APP_SECRET = "facebookログインのAPIシークレット"
```

## 依存パッケージインストールとデータベース作成

```sh
bundle install
rake db:migrate
```

## javascriptのビルド

```sh
npm install
npm run build
```
