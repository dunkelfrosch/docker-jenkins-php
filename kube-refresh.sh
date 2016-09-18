#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: start cluster configuration "
echo -e "        | ⇢ $(uname -nm)"
echo -e "        | ⇢ $(kubectl replace -f ${DIR}/kubernetes/jenkins-rc.yml)"
echo -e "        | ⇢ $(kubectl replace -f ${DIR}/kubernetes/jenkins-svc.yml)"
echo -e "        | ⇢ [ done ]\n"
