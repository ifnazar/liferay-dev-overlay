#!/bin/sh

set -o errexit ; set -o nounset

RESOURCES_DIR=${LIFERAY_PORTAL_DIR}/modules/portal/portal-search-solr/src/META-INF/resources
SOLR_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/solr-server/solr-5.2.1
SERVER_SOLR_DIR=${SOLR_DIR}/server/solr
LIFERAY_DIR=${SOLR_DIR}/liferay
INSTANCE_DIR=${LIFERAY_DIR}/instance

cp      ${SERVER_SOLR_DIR}/solr.xml   ${LIFERAY_DIR}
cp -r   ${SOLR_DIR}/server/solr/configsets/data_driven_schema_configs/conf   ${INSTANCE_DIR}

# Replacements
cp   ${RESOURCES_DIR}/schema.xml       ${INSTANCE_DIR}/conf
cp   ${RESOURCES_DIR}/solrconfig.xml   ${INSTANCE_DIR}/conf

rm -r   ${INSTANCE_DIR}/data
