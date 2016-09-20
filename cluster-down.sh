#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

./kube-down.sh

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: shutdown main cluster (all nodes)"
echo -e "        | ⇢ $(uname -nm)"
echo -e "        | ⇢ $(gcloud container clusters resize jenkins --size 0)"
echo -e "        | ⇢ [ done ]\n"
