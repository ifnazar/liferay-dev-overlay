#!/bin/sh

set -o errexit ; set -o nounset



function eclipse_generate()
{
	subdir=$1
	cd ${LIFERAY_PORTAL_DIR}/$subdir
	${LIFERAY_PORTAL_DIR}/gradlew eclipse -a
}



eclipse_generate modules/apps/application-list
eclipse_generate modules/apps/bookmarks
eclipse_generate modules/apps/calendar
eclipse_generate modules/apps/configuration-admin
eclipse_generate modules/apps/document-library
eclipse_generate modules/apps/dynamic-data-lists
eclipse_generate modules/apps/dynamic-data-mapping
eclipse_generate modules/apps/dynamic-data-mapping/dynamic-data-mapping-form-evaluator
eclipse_generate modules/apps/export-import
eclipse_generate modules/apps/item-selector
eclipse_generate modules/apps/journal
eclipse_generate modules/apps/message-boards
eclipse_generate modules/apps/mobile-device-rules
eclipse_generate modules/apps/portal-settings
eclipse_generate modules/apps/portlet-display-template
eclipse_generate modules/apps/search
eclipse_generate modules/apps/site/site-api
eclipse_generate modules/apps/trash
eclipse_generate modules/apps/wiki
eclipse_generate modules/core/osgi-service-tracker-collections
eclipse_generate modules/core/registry-api
eclipse_generate modules/frontend/frontend-taglib
eclipse_generate modules/portal/portal-background-task-api
eclipse_generate modules/portal/portal-expression
eclipse_generate modules/portal/portal-instance-lifecycle
eclipse_generate modules/portal/portal-metatype
eclipse_generate modules/portal/portal-output-stream-container
eclipse_generate modules/portal/portal-expression
eclipse_generate modules/portal/portal-rest-extender-test
eclipse_generate modules/portal/portal-search
eclipse_generate modules/portal/portal-search-elasticsearch
eclipse_generate modules/portal/portal-search-solr
eclipse_generate modules/portal/portal-settings
eclipse_generate modules/portal/portal-upgrade
eclipse_generate modules/test/arquillian-extension-junit-bridge
eclipse_generate modules/util/source-formatter
