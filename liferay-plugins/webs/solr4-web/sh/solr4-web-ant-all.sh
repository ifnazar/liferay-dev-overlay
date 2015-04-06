#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PLUGINS_DIR}/shared/solr4-shared

ant all

cd ${LIFERAY_PLUGINS_DIR}/webs/solr4-web

ant all

cd ${LIFERAY_BUNDLES_PORTAL_DIR}
pwd

rm -v -f deploy/com.liferay.portal.search.solr.jar 
rm -v -f osgi/modules/com.liferay.portal.search.solr.jar
rm -v -f osgi/portal/com.liferay.portal.search.elasticsearch.jar
