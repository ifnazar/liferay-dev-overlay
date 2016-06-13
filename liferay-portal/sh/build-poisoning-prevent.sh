#!/bin/sh

set -o errexit ; set -o nounset

figlet -f mini Build Poisoning Prevent || true

cd ${LIFERAY_PORTAL_DIR}

cd .gradle   &&   git clean -dfx   &&   cd ..   &&   ant setup-sdk