#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}

figlet Keep calm and ANT ALL || true

CLEAN_NODE_MODULES=false

if [ "$CLEAN_NODE_MODULES" = false ]
then
	ant all
else
	ant all -Dclean.node.modules=true
fi

figlet compile-test || true

ant compile-test
