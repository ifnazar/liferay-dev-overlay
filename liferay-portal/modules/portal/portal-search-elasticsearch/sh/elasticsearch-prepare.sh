#!/bin/sh

set -o errexit ; set -o nounset

RESOURCES_DIR=${LIFERAY_PORTAL_DIR}/modules/apps/foundation/portal-search/portal-search-elasticsearch/src/main/resources/META-INF/resources
ELASTICSEARCH_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/elasticsearch-server/elasticsearch-6.1.3
DATA_DIR=${ELASTICSEARCH_DIR}/data
LIFERAYELASTICSEARCHCLUSTER_DIR=${DATA_DIR}/LiferayElasticsearchCluster

# Replacements
#cp   ${RESOURCES_DIR}/elasticsearch.yml       ${ELASTICSEARCH_DIR}/config

rm -r   ${LIFERAYELASTICSEARCHCLUSTER_DIR}    ||  true

cd ${ELASTICSEARCH_DIR}

bin/elasticsearch-plugin install analysis-kuromoji || true
bin/elasticsearch-plugin install analysis-icu || true
bin/elasticsearch-plugin install analysis-smartcn || true
bin/elasticsearch-plugin install analysis-stempel || true
