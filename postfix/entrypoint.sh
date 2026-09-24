#!/bin/sh
set -e

cp /etc/postfix.d/main.cf     /etc/postfix/main.cf
cp /etc/postfix.d/master.cf   /etc/postfix/master.cf
cp /etc/postfix.d/openssl.cnf /etc/postfix/openssl.cnf

postfix check

exec postfix start-fg
