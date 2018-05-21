#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}/modules/apps/portal-search-elasticsearch6

${LIFERAY_PORTAL_DIR}/gradlew clean deploy

cd ${LIFERAY_BUNDLES_PORTAL_DIR}

if [ -e "osgi/portal/com.liferay.portal.search.solr.jar" ]
	then mv osgi/portal/com.liferay.portal.search.solr.jar osgi/
fi
