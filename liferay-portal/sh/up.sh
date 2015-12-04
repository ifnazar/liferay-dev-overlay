#!/bin/sh

set -o errexit ; set -o nounset

./git-pull-origin-master.sh

./all.sh
