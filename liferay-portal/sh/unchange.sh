#!/bin/sh

set -o errexit ; set -o nounset

./eclipse-poisoning-prevent.sh

figlet Unchange || true

cd ${LIFERAY_PORTAL_DIR}

git update-index --assume-unchanged .classpath
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-billion-laughs.xml
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-quadratic-blowup.xml

cd ${LIFERAY_PLUGINS_DIR}

if [ -e "apps/content-targeting" ] 
then
	git update-index --assume-unchanged apps/content-targeting
fi

cd ${LIFERAY_PLUGINS_EE62_DIR}

if [ -e "apps/content-targeting" ] 
then
	git update-index --assume-unchanged apps/content-targeting
fi
git update-index --assume-unchanged shared/solr4-shared/.classpath
git update-index --assume-unchanged shared/solr4-shared/lib/portal-compat-shared.jar
git update-index --assume-unchanged webs/solr4-web/.classpath
