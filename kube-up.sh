#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: start jenkins deployment "
echo -e "        | ⇢ $(uname -nm)"
echo -e "        | ⇢ $(kubectl create -f ${DIR}/kubernetes/deploy-jenkins.yml)"
echo -e "        | ⇢ $(kubectl create -f ${DIR}/kubernetes/deploy-mysql.yml)"
echo -e "        | ⇢ [ done ]\n"

kubectl get pods -o wide -a --watch