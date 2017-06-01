#!/bin/sh

set -o errexit ; set -o nounset

RESOURCES_DIR=${LIFERAY_PORTAL_DIR}/modules/apps/foundation/portal-search/portal-search-elasticsearch/src/main/resources/META-INF/resources
ELASTICSEARCH_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/elasticsearch-server/elasticsearch-2.4.0
DATA_DIR=${ELASTICSEARCH_DIR}/data
LIFERAYELASTICSEARCHCLUSTER_DIR=${DATA_DIR}/LiferayElasticsearchCluster

# Replacements
#cp   ${RESOURCES_DIR}/elasticsearch.yml       ${ELASTICSEARCH_DIR}/config

rm -r   ${LIFERAYELASTICSEARCHCLUSTER_DIR}    ||  true

cd ${ELASTICSEARCH_DIR}

bin/plugin install analysis-kuromoji || true
bin/plugin install analysis-icu || true
bin/plugin install analysis-smartcn || true
bin/plugin install analysis-stempel || true
