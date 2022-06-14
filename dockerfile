from alpine
workdir /var/web
copy . /var/web
env TZ=Asia/Jakarta

run ls -al portal|grep vendor
run ls -al backoffice|grep vendor

# run apk update > /dev/null; apk add tzdata php81 php81-common --no-cache > /dev/null
# run cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# expose 8080
# expose 8081