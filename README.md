# web topup

Website topup:

- Mobile Legends : Bang Bang!
- PUBG Mobile Indonesia
- Free Fire
- Sausage Man Indonesia

## Install

clone this repo
```
git clone https://github.com/nuraziz0404/web-topup
```

load [db.sql](https://github.com/nuraziz0404/web-topup/blob/main/db.sql), example:
```
mysql -u <username> -p < db-with-create-db.sql
```

### windows (cmd):
```
  cd portal
  copy .env.example .env
  composer install
  composer update
```
```
  cd backoffice
  copy .env.example .env
  composer install
  composer update
```
### linux (cmd):
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

### windows (cmd):
```
  cd portal
  run.bat
```
```
  cd backoffice
  run.bat
```
### linux (cmd):
```
  cd portal
  sh run.sh
```
```
  cd backoffice
  sh run.sh
```

## Documentation

Backoffice: [Documentation](https://github.com/nuraziz0404/web-topup/blob/main/backoffice/README.md)

Portal: [Documentation](https://github.com/nuraziz0404/web-topup/blob/portal/backoffice/README.md)

## Docker example
```
docker build . -t wt
docker run -d --network host -p 8080:8080 -p 8081:8081 wt
```

## Authors

- [@Nur Aziz](https://github.com/nuraziz0404)
- [@Muhammad Arya Putra Pratama](https://github.com/maryaputrap) ([basefile](https://drive.google.com/drive/u/0/folders/12swzNlRsOU74Jz2px8mEP-W03Daf5QIJ))