#!/bin/sh

set -o errexit ; set -o nounset

source fn-portal-debug.sh


export LIFERAY_BUNDLES_PORTAL_EE_DIR=~/Liferay/bundles/liferay-portal-ee
export LIFERAY_BUNDLES_PORTAL_EE_TOMCAT_DIR=${LIFERAY_BUNDLES_PORTAL_EE_DIR}/tomcat-8.0.32


tomcat_debug    lportalee    ${LIFERAY_BUNDLES_PORTAL_EE_TOMCAT_DIR}
