#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo; read -p "do you realy want to shutdown the current jenkins-cluster | are you sure (y/n) ?" -n 1 -r; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 2
fi

./kube-down.sh

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: shutdown main cluster (all nodes)"
echo -e "        | ⇢ $(uname -nm)"
echo -e "\n"

gcloud container clusters resize jenkins --size 0 --no-async