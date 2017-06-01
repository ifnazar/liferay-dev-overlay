#!/bin/sh

set -o errexit ; set -o nounset

./ant-all.sh
#./ant-almost.sh

./eclipse-generate.sh

./unchange.sh
