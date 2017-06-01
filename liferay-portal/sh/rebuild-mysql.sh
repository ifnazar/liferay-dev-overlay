#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}/sql

ant build-db  rebuild-mysql   -Ddatabase.name=lportal   -Ddatabase.types=mysql  -Dmysql.user=root  -Dmysql.arg.line='--user=root'
