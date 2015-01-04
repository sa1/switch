#! /bin/bash

if id -u $1 >/dev/null 2>&1; then
    echo "user exists"
else
    adduser --quiet --disabled-password --gecos "" $1 --uid $2 >/dev/null 2>&1
fi

su -s "$3" $1
