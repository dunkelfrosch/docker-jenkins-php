#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: shutdown jenkins pods"
echo -e "        | ⇢ $(uname -nm)"
echo -e "        | ⇢ $(kubectl delete -f ${DIR}/kubernetes/deploy-jenkins.yml)"
echo -e "        | ⇢ $(kubectl delete -f ${DIR}/kubernetes/deploy-mysql.yml)"
echo -e "        | ⇢ [ done ]\n"
