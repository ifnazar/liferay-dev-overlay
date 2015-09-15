#!/bin/sh

set -o errexit ; set -o nounset

./git-pull-origin-master.sh

./ant-all.sh

./ant-setup-eclipse.sh

./unchange.sh
