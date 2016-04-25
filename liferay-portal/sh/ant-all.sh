#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}

figlet Keep calm and ANT ALL || true

ant all

figlet compile-test || true

ant compile-test
