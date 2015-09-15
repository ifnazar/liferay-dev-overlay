#!/bin/sh

set -o errexit ; set -o nounset



function ant_setup_eclipse()
{
	subdir=$1
	cd ${LIFERAY_PORTAL_DIR}/$subdir
	${LIFERAY_PORTAL_DIR}/gradlew eclipse
}



ant_setup_eclipse modules/apps/application-list
ant_setup_eclipse modules/apps/bookmarks
ant_setup_eclipse modules/apps/document-library
ant_setup_eclipse modules/apps/dynamic-data-lists
ant_setup_eclipse modules/apps/dynamic-data-mapping
ant_setup_eclipse modules/apps/export-import
ant_setup_eclipse modules/apps/item-selector
ant_setup_eclipse modules/apps/journal
ant_setup_eclipse modules/apps/message-boards
ant_setup_eclipse modules/apps/mobile-device-rules
ant_setup_eclipse modules/apps/portal-settings
ant_setup_eclipse modules/apps/wiki
ant_setup_eclipse modules/core/osgi-service-tracker-map
ant_setup_eclipse modules/portal/portal-rest-extender-test
ant_setup_eclipse modules/portal/portal-search
ant_setup_eclipse modules/portal/portal-search-elasticsearch
ant_setup_eclipse modules/portal/portal-search-solr
ant_setup_eclipse modules/portal/portal-settings
ant_setup_eclipse modules/test/arquillian-extension-junit-bridge
