#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}

git log 1-portal-local-auto-pull/master --pretty=format:"%h|%cr[%an]%s" -- modules/apps/foundation/portal-search