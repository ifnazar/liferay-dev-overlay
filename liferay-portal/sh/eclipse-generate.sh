#!/bin/sh

set -o errexit ; set -o nounset

source fn-gradlew.sh

function eclipse_generate()
{
	subdir=$1

	figlet -f digital $subdir || true

	cd ${LIFERAY_PORTAL_DIR}/$subdir
	pwd

	gradlew_eclipse
}

function eclipse_generate_with_compat()
{
	subdir=$1

	eclipse_generate $subdir

	cd ${LIFERAY_PORTAL_DIR}/$subdir

	KERNEL_COMPAT_JAR="/portal-master/tools/sdk/dist/com.liferay.portal.kernel.compat-1.0.0.jar"

	SED="s|<classpath>|<classpath><classpathentry kind=\"lib\" path=\"${KERNEL_COMPAT_JAR}\"/>|g"

	sed -e "$SED" -i '' .classpath
}

eclipse_generate modules/apps/foundation/portal-search
eclipse_generate modules/apps/portal-search-solr

eclipse_generate_with_compat modules/apps/collaboration/blogs/blogs-service

eclipse_generate modules/apps/collaboration/blogs/blogs-test
eclipse_generate modules/apps/collaboration/blogs/blogs-test-util
eclipse_generate modules/apps/collaboration/bookmarks/bookmarks-test
eclipse_generate modules/apps/collaboration/document-library
eclipse_generate modules/apps/collaboration/flags
eclipse_generate modules/apps/collaboration/item-selector/item-selector-api
eclipse_generate modules/apps/collaboration/item-selector/item-selector-taglib
eclipse_generate modules/apps/collaboration/message-boards
eclipse_generate modules/apps/collaboration/wiki
eclipse_generate modules/apps/forms-and-workflow/calendar
eclipse_generate modules/apps/forms-and-workflow/dynamic-data-lists
eclipse_generate modules/apps/forms-and-workflow/dynamic-data-mapping
eclipse_generate modules/apps/foundation/configuration-admin
eclipse_generate modules/apps/foundation/friendly-url/friendly-url-api
eclipse_generate modules/apps/foundation/petra/petra-content
eclipse_generate modules/apps/foundation/portal-background-task/portal-background-task-api
eclipse_generate modules/apps/foundation/portal-background-task/portal-background-task-service
eclipse_generate modules/apps/foundation/portal-configuration
eclipse_generate modules/apps/foundation/portal-instances
eclipse_generate modules/apps/foundation/portal/portal-instance-lifecycle
eclipse_generate modules/apps/foundation/portal/portal-output-stream-container
eclipse_generate modules/apps/foundation/portal/portal-spring-extender
eclipse_generate modules/apps/foundation/portal/portal-upgrade
eclipse_generate modules/apps/foundation/portal/portal-verify-extender
eclipse_generate modules/apps/foundation/users-admin/users-admin-impl
eclipse_generate modules/apps/foundation/users-admin/users-admin-test
eclipse_generate modules/apps/foundation/xstream/xstream-configurator-api
eclipse_generate modules/apps/web-experience/application-list/application-list-api
eclipse_generate modules/apps/web-experience/asset/asset-publisher-layout-prototype
eclipse_generate modules/apps/web-experience/asset/asset-publisher-web
eclipse_generate modules/apps/web-experience/asset/asset-taglib
eclipse_generate modules/apps/web-experience/asset/asset-tags-navigation-web
eclipse_generate modules/apps/web-experience/export-import/export-import-api
eclipse_generate modules/apps/web-experience/export-import/export-import-service
eclipse_generate modules/apps/web-experience/journal
eclipse_generate modules/apps/web-experience/layout/layout-api
eclipse_generate modules/apps/web-experience/layout/layout-item-selector-api
eclipse_generate modules/apps/web-experience/layout/layout-item-selector-web
eclipse_generate modules/apps/web-experience/portlet-display-template
eclipse_generate modules/apps/web-experience/product-navigation
eclipse_generate modules/apps/web-experience/site/site-api
eclipse_generate modules/core/osgi-service-tracker-collections
eclipse_generate modules/core/registry-api
eclipse_generate modules/test/arquillian-extension-junit-bridge
eclipse_generate modules/util/source-formatter
