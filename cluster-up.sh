#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo; read -p "do you realy want to start the current jenkins-cluster | are you sure (y/n) ?" -n 1 -r; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 2
fi

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: start main cluster (1 node)"
echo -e "        | ⇢ $(uname -nm)"
echo -e "\n"

gcloud container clusters resize jenkins --size 3 --no-async && kubectl get nodes && ./kube-up.sh
