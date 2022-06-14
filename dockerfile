from alpine
workdir /var/web
copy . /var/web
env TZ=Asia/Jakarta

run apk update > /dev/null; apk add tzdata php7 php7-common php7-pdo_mysql composer --no-cache > /dev/null
run cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# run cat /etc/php8/php.ini | grep 

run compgen -c|grep php

run chmod -R a+rwx .
run cd portal; composer update --ignore-platform-req=ext-dom
run cd backoffice; composer update --ignore-platform-req=ext-dom

expose 8080
expose 8081

cmd sh -c portal/run.sh & sh -c backoffice/run.sh