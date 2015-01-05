#! /bin/bash

if id -u $1 >/dev/null 2>&1; then
    echo "user exists"
else
    [ $(getent group wheel) ] || groupadd wheel
    adduser --quiet --disabled-password --gecos "" $1 --uid $2 --gid $3 >/dev/null 2>&1
    gpasswd -a $1 wheel >/dev/null 2>&1
fi

su -s "$4" - $1
