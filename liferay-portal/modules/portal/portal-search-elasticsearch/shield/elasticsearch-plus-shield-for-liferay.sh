#!/bin/sh
set -o errexit ; set -o nounset

export JAVA_HOME=${JAVA8_HOME}

${APPS_HOME}/elasticsearch-1.5.1/bin/elasticsearch -Des.config=elasticsearch-plus-shield-for-liferay.yml