#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}

cd portal-impl
ant test-class -Dtest.class=UserIndexerTest
