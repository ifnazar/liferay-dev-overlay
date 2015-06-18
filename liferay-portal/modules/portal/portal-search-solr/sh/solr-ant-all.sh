#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}/modules/portal/portal-search-solr

ant all

cd ${LIFERAY_BUNDLES_PORTAL_DIR}

if [ -e "osgi/portal/com.liferay.portal.search.elasticsearch.jar" ]
	then mv osgi/portal/com.liferay.portal.search.elasticsearch.jar osgi/
fi
