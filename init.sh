#!/bin/bash

if sudo -n true 2>/dev/null; then
    echo "Now Init Start……"
else
    echo "Erro: must use sudo"
    exit 1
fi

cp ./etc/pcron /etc/pcron
cp ./etc/pcrontab /etc/pcrontab
chmod 777 /etc/pcron  /etc/pcrontab

touch /var/log/pcron
touch /etc/pcron.allow

echo "Done Init, you can use pcron!"

