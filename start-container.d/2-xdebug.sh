#!/bin/sh -e
printf "error_reporting = E_ALL\n\
display_startup_errors = On\n\
display_errors = $DISPLAY_ERROR\n\
xdebug.profiler_enable=1\n\
xdebug.profiler_enable_trigger=1\n\
xdebug.remote_enable=$XDEBUG_ENABLE\n\
xdebug.remote_autostart=$XDEBUG_ENABLE\n\
xdebug.remote_connect_back=0\n\
xdebug.remote_port=$XDEBUG_PORT\n\
xdebug.remote_log=/tmp/xdebug.log\n\
xdebug.remote_host=$XDEBUG_HOSTIP\n" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

