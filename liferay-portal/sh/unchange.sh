#!/bin/sh

set -o errexit ; set -o nounset

./eclipse-poisoning-prevent.sh

figlet Unchange || true

cd ${LIFERAY_PORTAL_DIR}

git update-index --assume-unchanged .classpath
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-billion-laughs.xml
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-quadratic-blowup.xml

git update-index --assume-unchanged modules/apps/collaboration/bookmarks/settings.gradle
git update-index --assume-unchanged modules/apps/collaboration/document-library/settings.gradle
git update-index --assume-unchanged modules/apps/collaboration/flags/settings.gradle
git update-index --assume-unchanged modules/apps/collaboration/item-selector/settings.gradle
git update-index --assume-unchanged modules/apps/collaboration/message-boards/settings.gradle
git update-index --assume-unchanged modules/apps/collaboration/wiki/settings.gradle
git update-index --assume-unchanged modules/apps/forms-and-workflow/calendar/settings.gradle
git update-index --assume-unchanged modules/apps/forms-and-workflow/dynamic-data-lists/settings.gradle
git update-index --assume-unchanged modules/apps/forms-and-workflow/dynamic-data-mapping/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/configuration-admin/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/frontend-taglib/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/mobile-device-rules/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/osgi/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/petra/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/portal-background-task/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/portal-configuration/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/portal-instances/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/portal-search/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/portal/settings.gradle
git update-index --assume-unchanged modules/apps/foundation/xstream/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/application-list/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/asset/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/export-import/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/journal/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/layout/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/portlet-display-template/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/product-navigation/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/site/settings.gradle
git update-index --assume-unchanged modules/apps/web-experience/trash/settings.gradle

cd ${LIFERAY_PLUGINS_DIR}

if [ -e "apps/content-targeting" ] 
then
	git update-index --assume-unchanged apps/content-targeting
fi

cd ${LIFERAY_PLUGINS_EE62_DIR}

if [ -e "apps/content-targeting" ] 
then
	git update-index --assume-unchanged apps/content-targeting
fi
git update-index --assume-unchanged shared/solr4-shared/.classpath
git update-index --assume-unchanged shared/solr4-shared/lib/portal-compat-shared.jar
git update-index --assume-unchanged webs/solr4-web/.classpath
