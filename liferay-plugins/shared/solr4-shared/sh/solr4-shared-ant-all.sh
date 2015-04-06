#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PLUGINS_DIR}/shared/solr4-shared

cp bnd.bnd bnd.bnd.original
sed 's/libs: ${filterout;${lsr;lib;\*.jar};.*.jar}/libs: ${lsr;lib;\*.jar}/g' bnd.bnd.original > bnd.bnd

if [ -e "lib/slf4j-api.jar" ]
	then mv lib/slf4j-api.jar ./
fi

ant all

mv ./slf4j-api.jar lib/
mv bnd.bnd.original bnd.bnd

cd ${LIFERAY_BUNDLES_PORTAL_DIR}

mv deploy/com.liferay.portal.search.solr.jar osgi/portal/

if [ -e "osgi/portal/com.liferay.portal.search.elasticsearch.jar" ]
	then mv osgi/portal/com.liferay.portal.search.elasticsearch.jar osgi/
fi
