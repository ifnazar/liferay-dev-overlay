#!/bin/sh

set -o errexit ; set -o nounset

SOLR_DIR=${LIFERAY_BUNDLES_PORTAL_DIR}/solr-server/solr-7.2.1/
SOLR_HOME=

#
# Experiment with aggressively low values for faster Search TCK integration tests
#
# see https://github.com/liferay/liferay-portal/blob/60238ea946c4920d7732d43ea9232bca7d8544b2/modules/portal/portal-search-solr/src/META-INF/resources/solrconfig.xml#L20
#
AUTOSOFTCOMMIT_MAXTIME=1000

cd ${SOLR_DIR}

bin/solr start -Dsolr.autoSoftCommit.maxTime=${AUTOSOFTCOMMIT_MAXTIME} -V -f
