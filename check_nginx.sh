#!/bin/bash

# Проверка порта 80
nc -zvw1 localhost 80 > /dev/null 2>&1
if [ $? -eq 1 ]; then
    echo "Порт 80 закрыт!"
    exit 1
fi

# Проверка наличия файла index.nginx-debian.html
if [[ ! -f "/var/www/html/index.nginx-debian.html" ]]; then
    echo "Файл index.nginx-debian.html  отсутствует!"
    exit 1
fi

exit 0
