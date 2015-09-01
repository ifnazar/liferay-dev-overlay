#!/bin/sh

set -o errexit ; set -o nounset

./eclipse-poisoning-prevent.sh

cd ${LIFERAY_PORTAL_DIR}

git update-index --assume-unchanged .classpath
git update-index --assume-unchanged .ivy/cache/--default.xml
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-billion-laughs.xml
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-quadratic-blowup.xml
git update-index --assume-unchanged modules/apps/bookmarks/bookmarks-api/.classpath
git update-index --assume-unchanged modules/apps/bookmarks/bookmarks-test/.classpath
git update-index --assume-unchanged modules/apps/bookmarks/bookmarks-test/ivy.xml
git update-index --assume-unchanged modules/apps/document-library/document-library-service/.classpath
git update-index --assume-unchanged modules/apps/document-library/document-library-test/.classpath
git update-index --assume-unchanged modules/apps/dynamic-data-lists/dynamic-data-lists-api/.classpath
git update-index --assume-unchanged modules/apps/dynamic-data-lists/dynamic-data-lists-test/.classpath
git update-index --assume-unchanged modules/apps/dynamic-data-lists/dynamic-data-lists-web/.classpath
git update-index --assume-unchanged modules/apps/item-selector/item-selector-api/.classpath
git update-index --assume-unchanged modules/apps/item-selector/item-selector-criteria-api/.classpath
git update-index --assume-unchanged modules/apps/journal/journal-test/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-api/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-service/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-test/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-web/.classpath
git update-index --assume-unchanged modules/core/portal-bootstrap/.classpath
git update-index --assume-unchanged modules/core/registry-impl/.classpath
git update-index --assume-unchanged modules/portal/portal-rest-extender-test/.classpath
git update-index --assume-unchanged modules/portal/portal-search-elasticsearch/.classpath
git update-index --assume-unchanged modules/util/portal-tools-service-builder/.classpath
git update-index --assume-unchanged modules/util/source-formatter/.classpath

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
