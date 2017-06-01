#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}

figlet pull rebase || true

#REMOTE_NAME=origin
REMOTE_NAME=1-portal-local-auto-pull
BRANCH_NAME=master

echo =======================================================================
git remote show ${REMOTE_NAME}
echo =======================================================================
git status
echo =======================================================================
git push origin refs/remotes/${REMOTE_NAME}/${BRANCH_NAME}:refs/heads/${BRANCH_NAME}
echo =======================================================================
git pull --rebase ${REMOTE_NAME} ${BRANCH_NAME}
echo =======================================================================
