#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_BUNDLES_PORTAL_DIR}/solr-server/solr-4.10.2/example/

java -Djetty.port=8088 -jar start.jar
