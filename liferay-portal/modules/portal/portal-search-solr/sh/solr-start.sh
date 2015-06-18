#!/bin/sh

set -o errexit ; set -o nounset

SOLR_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/solr-server/solr-5.2.1/

cd ${SOLR_DIR}

bin/solr start -V -s ${SOLR_DIR}/liferay -f
