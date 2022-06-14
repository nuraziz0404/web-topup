from alpine
workdir /var/web
copy . /var/web
env TZ=Asia/Jakarta

run apk update > /dev/null; apk add tzdata php81 php81-common php81-pdo_mysql composer --no-cache > /dev/null
run cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# run cat /etc/php8/php.ini | grep 
run php --ini

run chmod -R a+rwx .
run cd portal; composer update -W
run cd backoffice; composer update -W

expose 8080
expose 8081

cmd sh -c portal/run.sh & sh -c backoffice/run.sh