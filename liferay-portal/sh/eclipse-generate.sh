#!/bin/bash

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

#	KERNEL_COMPAT_JAR="/portal-master/tools/sdk/dist/com.liferay.portal.kernel.compat-1.0.0.jar"

#	SED="s|<classpath>|<classpath><classpathentry kind=\"lib\" path=\"${KERNEL_COMPAT_JAR}\"/>|g"

#	sed -e "$SED" -i '' .classpath
}

# Search

eclipse_generate modules/apps/portal-search
eclipse_generate modules/apps/portal-search-elasticsearch6
eclipse_generate modules/apps/portal-search-solr7

# Compat

eclipse_generate_with_compat modules/apps/blogs/blogs-service

# ci:test:search

eclipse_generate modules/apps/application-list/application-list-api
eclipse_generate modules/apps/asset/asset-api
eclipse_generate modules/apps/asset/asset-categories-admin-web
eclipse_generate modules/apps/asset/asset-categories-navigation-api
eclipse_generate modules/apps/asset/asset-category-property-api
eclipse_generate modules/apps/asset/asset-display-api
eclipse_generate modules/apps/asset/asset-display-page-api
eclipse_generate modules/apps/asset/asset-publisher-layout-prototype
eclipse_generate modules/apps/asset/asset-publisher-web
eclipse_generate modules/apps/asset/asset-service
eclipse_generate modules/apps/asset/asset-taglib
eclipse_generate modules/apps/asset/asset-tags-navigation-web
eclipse_generate modules/apps/asset/asset-test
eclipse_generate modules/apps/asset/asset-test-util
eclipse_generate modules/apps/blogs/blogs-api
eclipse_generate modules/apps/blogs/blogs-service
eclipse_generate modules/apps/blogs/blogs-test
eclipse_generate modules/apps/blogs/blogs-test-util
eclipse_generate modules/apps/bookmarks/bookmarks-api
eclipse_generate modules/apps/bookmarks/bookmarks-service
eclipse_generate modules/apps/bookmarks/bookmarks-test
eclipse_generate modules/apps/calendar
eclipse_generate modules/apps/changeset
eclipse_generate modules/apps/comment/comment-taglib
eclipse_generate modules/apps/configuration-admin
eclipse_generate modules/apps/document-library
eclipse_generate modules/apps/dynamic-data-lists
eclipse_generate modules/apps/dynamic-data-mapping
eclipse_generate modules/apps/export-import/export-import-api
eclipse_generate modules/apps/export-import/export-import-service
eclipse_generate modules/apps/export-import/export-import-test-util
eclipse_generate modules/apps/flags
eclipse_generate modules/apps/fragment/fragment-api
eclipse_generate modules/apps/friendly-url/friendly-url-api
eclipse_generate modules/apps/frontend-js/frontend-js-loader-modules-extender-api
eclipse_generate modules/apps/frontend-taglib/frontend-taglib/
eclipse_generate modules/apps/frontend-taglib/frontend-taglib-clay/
eclipse_generate modules/apps/frontend-taglib/frontend-taglib-soy/
eclipse_generate modules/apps/item-selector/item-selector-api
eclipse_generate modules/apps/item-selector/item-selector-taglib
eclipse_generate modules/apps/journal
eclipse_generate modules/apps/layout/layout-api
eclipse_generate modules/apps/layout/layout-item-selector-api
eclipse_generate modules/apps/layout/layout-item-selector-web
eclipse_generate modules/apps/layout/layout-page-template-api
eclipse_generate modules/apps/message-boards
eclipse_generate modules/apps/mobile-device-rules/mobile-device-rules-api
eclipse_generate modules/apps/petra
eclipse_generate modules/apps/portal-background-task/portal-background-task-api
eclipse_generate modules/apps/portal-background-task/portal-background-task-service
eclipse_generate modules/apps/portal-configuration
eclipse_generate modules/apps/portal-instances
eclipse_generate modules/apps/portal-security/portal-security-service-access-policy-api
eclipse_generate modules/apps/portal-template/portal-template-soy-api
eclipse_generate modules/apps/portal/portal-dao-orm-custom-sql-api
eclipse_generate modules/apps/portal/portal-instance-lifecycle-api
eclipse_generate modules/apps/portal/portal-output-stream-container
eclipse_generate modules/apps/portal/portal-spring-extender-api
eclipse_generate modules/apps/portal/portal-upgrade-api
eclipse_generate modules/apps/portal/portal-verify-extender
eclipse_generate modules/apps/portal-validation/portal-validation-api
eclipse_generate modules/apps/portlet-display-template
eclipse_generate modules/apps/product-navigation
eclipse_generate modules/apps/rss/rss-api
eclipse_generate modules/apps/server/server-admin-web
eclipse_generate modules/apps/sharing
eclipse_generate modules/apps/site/site-api
eclipse_generate modules/apps/social/social-activity-test-util
eclipse_generate modules/apps/staging/staging-api
eclipse_generate modules/apps/static/osgi/osgi-util
eclipse_generate modules/apps/static/portal-configuration/portal-configuration-persistence-api
eclipse_generate modules/apps/subscription/subscription-api
eclipse_generate modules/apps/trash/trash-api
eclipse_generate modules/apps/trash/trash-service
eclipse_generate modules/apps/trash/trash-test-util
eclipse_generate modules/apps/upload/upload-api/
eclipse_generate modules/apps/user-groups-admin/user-groups-admin-test
eclipse_generate modules/apps/user-groups-admin/user-groups-admin-web
eclipse_generate modules/apps/users-admin/users-admin-api
eclipse_generate modules/apps/users-admin/users-admin-impl
eclipse_generate modules/apps/users-admin/users-admin-test
eclipse_generate modules/apps/wiki
eclipse_generate modules/apps/xstream/xstream-configurator-api
eclipse_generate modules/core/osgi-service-tracker-collections
eclipse_generate modules/core/registry-api
eclipse_generate modules/test/arquillian-extension-junit-bridge
eclipse_generate modules/util/source-formatter
