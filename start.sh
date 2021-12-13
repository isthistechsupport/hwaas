#!/bin/sh

gunicorn --bind 0.0.0.0:8003 wsgi:app