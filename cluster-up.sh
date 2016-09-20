#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

echo -e "\n"
echo -e "-- ⚑ -- | → KUBERNETES :: start main cluster (1 node)"
echo -e "        | ⇢ $(uname -nm)"
echo -e "        | ⇢ $(gcloud container clusters resize jenkins --size 1)"
echo -e "        | ⇢ [ done ]\n"

./kube-up.sh
