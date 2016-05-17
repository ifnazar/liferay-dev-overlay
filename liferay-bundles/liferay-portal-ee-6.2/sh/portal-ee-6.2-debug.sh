#!/bin/sh

set -o errexit ; set -o nounset

${LIFERAY_BUNDLES_PORTAL_EE62_DIR}/tomcat-7.0.62/bin/catalina.sh jpda run
