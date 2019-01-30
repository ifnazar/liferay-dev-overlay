#!/bin/bash

set -o errexit ; set -o nounset

source fn-portal-debug.sh

tomcat_debug    lportal    ${LIFERAY_BUNDLES_PORTAL_TOMCAT_DIR}
