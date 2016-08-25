#!/bin/sh

set -o errexit ; set -o nounset

source fn-gradlew_eclipse.sh

function eclipse_generate()
{
	subdir=$1

	figlet -f digital $subdir || true

	cd ${LIFERAY_PORTAL_DIR}/$subdir
	pwd

	gradlew_eclipse
}

eclipse_generate modules/apps/collaboration/bookmarks
eclipse_generate modules/apps/collaboration/document-library
eclipse_generate modules/apps/collaboration/flags
eclipse_generate modules/apps/collaboration/item-selector
eclipse_generate modules/apps/collaboration/message-boards
eclipse_generate modules/apps/collaboration/wiki
eclipse_generate modules/apps/forms-and-workflow/calendar
eclipse_generate modules/apps/forms-and-workflow/dynamic-data-lists
eclipse_generate modules/apps/forms-and-workflow/dynamic-data-mapping
eclipse_generate modules/apps/foundation/configuration-admin
eclipse_generate modules/apps/foundation/frontend-taglib
eclipse_generate modules/apps/foundation/mobile-device-rules
eclipse_generate modules/apps/foundation/petra/petra-collection
eclipse_generate modules/apps/foundation/petra/petra-content
eclipse_generate modules/apps/foundation/portal-background-task/portal-background-task-api
eclipse_generate modules/apps/foundation/portal-background-task/portal-background-task-service
eclipse_generate modules/apps/foundation/portal-configuration
eclipse_generate modules/apps/foundation/portal-instances
eclipse_generate modules/apps/foundation/portal-search
eclipse_generate modules/apps/foundation/portal/portal-dao-orm-custom-sql
eclipse_generate modules/apps/foundation/portal/portal-instance-lifecycle
eclipse_generate modules/apps/foundation/portal/portal-output-stream-container
eclipse_generate modules/apps/foundation/portal/portal-spring-extender
eclipse_generate modules/apps/foundation/portal/portal-upgrade
eclipse_generate modules/apps/foundation/portal/portal-verify-extender
eclipse_generate modules/apps/foundation/server/server-admin-web
eclipse_generate modules/apps/foundation/xstream/xstream-configurator-api
eclipse_generate modules/apps/portal-search-solr
eclipse_generate modules/apps/web-experience/application-list
eclipse_generate modules/apps/web-experience/asset/asset-publisher-layout-prototype
eclipse_generate modules/apps/web-experience/asset/asset-publisher-web
eclipse_generate modules/apps/web-experience/asset/asset-taglib
eclipse_generate modules/apps/web-experience/asset/asset-tags-navigation-web
eclipse_generate modules/apps/web-experience/export-import
eclipse_generate modules/apps/web-experience/journal
eclipse_generate modules/apps/web-experience/layout/layout-item-selector-api
eclipse_generate modules/apps/web-experience/layout/layout-item-selector-web
eclipse_generate modules/apps/web-experience/portlet-display-template
eclipse_generate modules/apps/web-experience/product-navigation
eclipse_generate modules/apps/web-experience/site
eclipse_generate modules/apps/web-experience/trash
eclipse_generate modules/core/osgi-service-tracker-collections
eclipse_generate modules/core/registry-api
eclipse_generate modules/test/arquillian-extension-junit-bridge
eclipse_generate modules/util/source-formatter
