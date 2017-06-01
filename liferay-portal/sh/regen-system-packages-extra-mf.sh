#!/bin/sh

set -o errexit ; set -o nounset

#cd ${LIFERAY_PORTAL_DIR}/portal-kernel
#ant clean install-portal-snapshot deploy

cd ${LIFERAY_PORTAL_DIR}/modules/core/portal-bootstrap
rm system.packages.extra.mf || true
${LIFERAY_PORTAL_DIR}/gradlew clean deploy install
