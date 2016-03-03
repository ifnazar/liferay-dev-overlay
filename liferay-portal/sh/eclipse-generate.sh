#!/bin/sh

set -o errexit ; set -o nounset



function eclipse_generate()
{
	subdir=$1
	echo $subdir
	cd ${LIFERAY_PORTAL_DIR}/$subdir
	${LIFERAY_PORTAL_DIR}/gradlew eclipse -a
}



eclipse_generate modules/apps/business-productivity/calendar
eclipse_generate modules/apps/business-productivity/dynamic-data-lists
eclipse_generate modules/apps/business-productivity/dynamic-data-mapping
eclipse_generate modules/apps/collaboration/bookmarks
eclipse_generate modules/apps/collaboration/document-library
eclipse_generate modules/apps/collaboration/flags
eclipse_generate modules/apps/collaboration/item-selector
eclipse_generate modules/apps/collaboration/message-boards
eclipse_generate modules/apps/collaboration/wiki
eclipse_generate modules/apps/platform/configuration-admin
eclipse_generate modules/apps/platform/frontend/frontend-taglib
eclipse_generate modules/apps/platform/mobile-device-rules
eclipse_generate modules/apps/platform/osgi-service-tracker-collections
eclipse_generate modules/apps/platform/portal-background-task/portal-background-task-api
eclipse_generate modules/apps/platform/portal-background-task/portal-background-task-service
eclipse_generate modules/apps/platform/portal-configuration
eclipse_generate modules/apps/platform/portal-instances
eclipse_generate modules/apps/platform/portal-remote/portal-remote-rest-extender-test
eclipse_generate modules/apps/platform/portal-search
eclipse_generate modules/apps/platform/portal-settings
eclipse_generate modules/apps/platform/portal/portal-instance-lifecycle
eclipse_generate modules/apps/platform/portal/portal-output-stream-container
eclipse_generate modules/apps/platform/portal/portal-upgrade
eclipse_generate modules/apps/platform/xstream/xstream-configurator-api
eclipse_generate modules/apps/web-experience-management/application-list
eclipse_generate modules/apps/web-experience-management/asset/asset-publisher-layout-prototype
eclipse_generate modules/apps/web-experience-management/asset/asset-publisher-web
eclipse_generate modules/apps/web-experience-management/asset/asset-taglib
eclipse_generate modules/apps/web-experience-management/asset/asset-tags-navigation-web
eclipse_generate modules/apps/web-experience-management/export-import
eclipse_generate modules/apps/web-experience-management/journal
eclipse_generate modules/apps/web-experience-management/portlet-display-template
eclipse_generate modules/apps/web-experience-management/product-navigation
eclipse_generate modules/apps/web-experience-management/site
eclipse_generate modules/apps/web-experience-management/trash
eclipse_generate modules/core/registry-api
eclipse_generate modules/test/arquillian-extension-junit-bridge
eclipse_generate modules/util/source-formatter
