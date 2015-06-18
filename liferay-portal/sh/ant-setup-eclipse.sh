#!/bin/sh

set -o errexit ; set -o nounset



function ant_setup_eclipse()
{
	subdir=$1
	cd ${LIFERAY_PORTAL_DIR}/$subdir
	ant setup-eclipse
}



ant_setup_eclipse modules/apps/bookmarks/bookmarks-test
ant_setup_eclipse modules/apps/dynamic-data-lists/dynamic-data-lists-test
ant_setup_eclipse modules/apps/journal/journal-test
ant_setup_eclipse modules/apps/wiki/wiki-test
