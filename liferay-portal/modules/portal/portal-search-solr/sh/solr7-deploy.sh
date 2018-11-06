#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}/modules/apps/portal-search-solr7/portal-search-solr7-impl

${LIFERAY_PORTAL_DIR}/gradlew clean deploy

cd ${LIFERAY_BUNDLES_PORTAL_DIR}

if [ -e "osgi/portal/com.liferay.portal.search.elasticsearch.jar" ]
	then mv osgi/portal/com.liferay.portal.search.elasticsearch.jar osgi/
fi
