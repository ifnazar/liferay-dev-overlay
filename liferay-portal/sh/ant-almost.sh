#!/bin/sh

set -o errexit ; set -o nounset

cp ../modules/build-almost.xml ${LIFERAY_PORTAL_DIR}/modules

#
cd ${LIFERAY_PORTAL_DIR}/modules
#

cp build.xml build.xml.original

cat build.xml.original | \
sed -e 's/path id="plugins.includes.path"/path id="plugins.includes.path.original"/g' | \
sed -e 's/<project>/<project><import file="build-almost.xml" \/>/g' > build.xml

#
cd ${LIFERAY_PORTAL_DIR}
#

ant all
ant compile-test

#
cd ${LIFERAY_PORTAL_DIR}/modules
#

mv build.xml.original build.xml

rm build-almost.xml
