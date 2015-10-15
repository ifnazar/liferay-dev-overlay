#!/bin/sh

set -o errexit ; set -o nounset



function eclipse_generate()
{
	subdir=$1
	cd ${LIFERAY_PORTAL_DIR}/$subdir
	${LIFERAY_PORTAL_DIR}/gradlew eclipse
}



eclipse_generate modules/apps/application-list
eclipse_generate modules/apps/bookmarks
eclipse_generate modules/apps/configuration-admin
eclipse_generate modules/apps/document-library
eclipse_generate modules/apps/dynamic-data-lists
eclipse_generate modules/apps/dynamic-data-mapping
eclipse_generate modules/apps/export-import
eclipse_generate modules/apps/item-selector
eclipse_generate modules/apps/journal
eclipse_generate modules/apps/message-boards
eclipse_generate modules/apps/mobile-device-rules
eclipse_generate modules/apps/portal-settings
eclipse_generate modules/apps/portlet-display-template
eclipse_generate modules/apps/wiki
eclipse_generate modules/core/osgi-service-tracker-map
eclipse_generate modules/core/registry-api
eclipse_generate modules/portal/portal-background-task-api
eclipse_generate modules/portal/portal-output-stream-container
eclipse_generate modules/portal/portal-rest-extender-test
eclipse_generate modules/portal/portal-search
eclipse_generate modules/portal/portal-search-elasticsearch
eclipse_generate modules/portal/portal-search-solr
eclipse_generate modules/portal/portal-settings
eclipse_generate modules/portal/portal-upgrade
eclipse_generate modules/test/arquillian-extension-junit-bridge
