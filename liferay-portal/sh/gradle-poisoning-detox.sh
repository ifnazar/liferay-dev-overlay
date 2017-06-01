#!/bin/sh

set -o errexit ; set -o nounset

figlet -f mini Gradle Poisoning Detox || true

cd ${LIFERAY_PORTAL_DIR}

cd .gradle

git clean -dfx
# rm gradle.properties

cd ..

ant setup-sdk