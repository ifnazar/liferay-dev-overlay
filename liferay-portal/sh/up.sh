#!/bin/sh

set -o errexit ; set -o nounset

./unchange.sh

./git-pull-origin-master.sh

./all.sh
