#!/bin/sh

set -o errexit ; set -o nounset

ELASTICSEARCH_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/elasticsearch-server/elasticsearch-6.1.3

cd ${ELASTICSEARCH_DIR}

bin/elasticsearch
#  -Des.logger.level=DEBUG
