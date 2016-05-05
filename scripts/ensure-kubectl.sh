#!/usr/bin/env bash

# Bash 'Strict Mode'
# http://redsymbol.net/articles/unofficial-bash-strict-mode
set -euo pipefail
IFS=$'\n\t'

# make the temp directory
[[ -e ~/.kube ]] || mkdir -p ~/.kube;

KUBE_VERSION=$(curl -sS https://storage.googleapis.com/kubernetes-release/release/stable.txt)

if [[ ! -e ~/.kube/kubectl ]]; then
  wget "https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl" -O ~/.kube/kubectl
  chmod +x ~/.kube/kubectl
fi
