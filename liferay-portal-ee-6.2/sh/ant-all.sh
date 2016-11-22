#!/bin/sh

set -o errexit ; set -o nounset

export JAVA_HOME=${JAVA7_HOME}

cd ${LIFERAY_PORTAL_EE62_DIR}

figlet Keep calm and ANT ALL || true

ant all

figlet compile-test || true

ant compile-test
