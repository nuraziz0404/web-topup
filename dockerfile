from alpine
workdir /var/web
copy . /var/web
env TZ=Asia/Jakarta

run apk update > /dev/null; apk add tzdata php8 php8-common php8-pdo_mysql composer --no-cache > /dev/null
run cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

run chmod -R a+rwx .
run cd portal; composer install --ignore-platform-reqs
run cd backoffice; composer install --ignore-platform-reqs
# run cd portal; composer update --ignore-platform-reqs
# run cd backoffice; composer update --ignore-platform-reqs
# run cd portal; rm composer.lock; composer install --ignore-platform-reqs
# run cd backoffice; rm composer.lock; composer install --ignore-platform-reqs

expose 8080
expose 8081

cmd cd portal; sh run.sh & cd ../backoffice; sh run.sh