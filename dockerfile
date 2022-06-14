from alpine
workdir /var/web
copy . /var/web
env TZ=Asia/Jakarta

run apk update > /dev/null; apk add tzdata php81 php81-common composer --no-cache > /dev/null
run cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

run chmod -R a+rwx .
run cd portal; composer install
run cd backoffice; composer install

expose 8080
expose 8081

cmd sh -c portal/run.sh & sh -c backoffice/run.sh