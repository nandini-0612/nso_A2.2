#!/bin/bash
service nginx start
exec uwsgi --ini application2.ini
