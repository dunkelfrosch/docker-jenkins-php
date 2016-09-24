#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo; read -p "you can do a destructive replacement update or a simple apply-update to your pods | do you want the replacement update (y/n) ?" -n 1 -r; echo
echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: update jenkins cluster/deployment configuration "
echo -e "        | ⇢ $(uname -nm)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo -e "        | ⇢ using [apply] method ..."
    echo -e "        | ⇢ $(kubectl apply -f ${DIR}/kubernetes/deploy-jenkins.yml)"
    echo -e "        | ⇢ $(kubectl apply -f ${DIR}/kubernetes/deploy-mysql.yml)"
else
    echo -e "        | ⇢ using [replace] method ..."
    echo -e "        | ⇢ $(kubectl replace -f ${DIR}/kubernetes/deploy-jenkins.yml)"
    echo -e "        | ⇢ $(kubectl replace -f ${DIR}/kubernetes/deploy-mysql.yml)"
fi

echo -e "        | ⇢ [ done ]\n"
