#!/bin/sh

set -o errexit ; set -o nounset

figlet -f mini Eclipse Poisoning Prevent || true

cd ${LIFERAY_PORTAL_DIR}

if [ -e "portal-impl/test-classes/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-billion-laughs.xml" ]
	then rm portal-impl/test-classes/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-*.xml
fi

if [ -e "portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-billion-laughs.xml" ]
	then rm portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-*.xml
fi