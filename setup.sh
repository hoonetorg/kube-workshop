#!/bin/bash
# https://kubernetes.io/docs/getting-started-guides/gce/
# https://kubernetes.io/docs/getting-started-guides/network-policy/calico/
# https://github.com/kubernetes/kubernetes/blob/master/cluster/gce/config-default.sh
export KUBE_GCE_ZONE=europe-west1-b
export NETWORK_POLICY_PROVIDER=calico
export KUBE_NODE_OS_DISTRIBUTION=debian
export CLUSTER_NAME=netconomy
curl -sS https://get.k8s.io | bash
