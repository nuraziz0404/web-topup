# web topup

Website topup:

- Mobile Legends : Bang Bang!
- PUBG Mobile Indonesia
- Free Fire
- Sausage Man Indonesia

## Install

```
  cd portal
  cp .env.example .env
  composer install
  composer update
```
```
  cd backoffice
  cp .env.example .env
  composer install
  composer update
```

## Config

modify backoffice/.env and portal/.env with your configuration
```
DB_HOST = localhost
DB_NAME = webtopup
DB_USER = root
DB_PASS = 
```

## Start

```
  cd portal
  yii serve
```
```
  cd backoffice
  yii serve --docroot="frontend/web/" --port=8888
```

## Documentation

[Documentation](https://linktodocumentation)
