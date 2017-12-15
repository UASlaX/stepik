#!/bin/bash

ln -s etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart
ln -s etc/gunicorn.conf   /etc/gunicorn.d/test
/etc/init.d/gunicorn restart
/etc/init.d/mysql start