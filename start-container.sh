#!/bin/sh -e

for script in /start-container.d/*; do
    if [ -f $script ];then
        sh $script
    fi
done

php-fpm
