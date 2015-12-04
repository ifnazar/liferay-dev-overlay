#!/bin/sh

set -o errexit ; set -o nounset

./ant-all.sh

./eclipse-generate.sh

./unchange.sh
