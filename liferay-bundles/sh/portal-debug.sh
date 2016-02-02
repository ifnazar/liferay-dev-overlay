#!/bin/sh

set -o errexit ; set -o nounset

${LIFERAY_BUNDLES_PORTAL_DIR}/tomcat-8.0.30/bin/catalina.sh jpda run
