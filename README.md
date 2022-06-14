# web topup

Website topup:

- Mobile Legends : Bang Bang!
- PUBG Mobile Indonesia
- Free Fire
- Sausage Man Indonesia

## Install
load [db.sql](https://github.com/nuraziz0404/web-topup/blob/main/db.sql)
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

modify `backoffice/.env` and `portal/.env` with your configuration
```
DB_HOST = localhost
DB_NAME = webtopup
DB_USER = root
DB_PASS = 
```

## Start

```
  cd portal
  ./start.sh
```
```
  cd backoffice
  ./start.sh
```

## Documentation

Backoffice: [Documentation](https://github.com/nuraziz0404/web-topup/blob/main/backoffice/README.md)

Portal: [Documentation](https://github.com/nuraziz0404/web-topup/blob/portal/backoffice/README.md)
