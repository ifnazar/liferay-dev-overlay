#!/bin/sh

set -o errexit ; set -o nounset

export JAVA_HOME=${JAVA7_HOME}

cd ${LIFERAY_PORTAL_EE62_DIR}

cd sql

#ant build-db  rebuild-mysql   -Ddatabase.name=lportalee62   -Ddatabase.types=mysql  -Dmysql.user=root  -Dmysql.arg.line='--user=root'
ant   rebuild-mysql   -Ddatabase.name=lportalee62   -Ddatabase.types=mysql  -Dmysql.user=root  -Dmysql.arg.line='--user=root'
