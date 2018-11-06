#!/bin/sh

set -o errexit ; set -o nounset

SOLR_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/solr-server/solr-7.2.1
SOLR_HOME=

CORE_NAME=liferay
CORE_DIR=${SOLR_DIR}/server/solr/${CORE_NAME}
CONF_DIR=${CORE_DIR}/conf
RESOURCES_DIR=${LIFERAY_PORTAL_DIR}/modules/apps/portal-search-solr7/portal-search-solr7-impl/src/main/resources/META-INF/resources

rm -r   ${CORE_DIR}  || true

${SOLR_DIR}/bin/solr stop  || true
${SOLR_DIR}/bin/solr start
${SOLR_DIR}/bin/solr create_core -c ${CORE_NAME} -d _default
${SOLR_DIR}/bin/solr stop

# Replacements
cp   ${RESOURCES_DIR}/schema.xml       ${CONF_DIR}
cp   ${RESOURCES_DIR}/solrconfig.xml   ${CONF_DIR}
