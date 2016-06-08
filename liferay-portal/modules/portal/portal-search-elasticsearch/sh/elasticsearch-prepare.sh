#!/bin/sh

set -o errexit ; set -o nounset

RESOURCES_DIR=${LIFERAY_PORTAL_DIR}/modules/apps/portal-search/portal-search-elasticsearch/src/main/resources
ELASTICSEARCH_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/elasticsearch-server/elasticsearch-2.2.0/
DATA_DIR=${ELASTICSEARCH_DIR}/data
LIFERAYELASTICSEARCHCLUSTER_DIR=${DATA_DIR}/LiferayElasticsearchCluster

# Replacements
#cp   ${RESOURCES_DIR}/config/elasticsearch.yml       ${INSTANCE_DIR}/conf

rm -r   ${LIFERAYELASTICSEARCHCLUSTER_DIR}
