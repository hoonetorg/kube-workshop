#!/bin/bash
set -e
set -o pipefail

function main {
  local pod_name="${POD_NAME:-UNKOWN_POD}"
  local node_name="${NODE_NAME:-UNKOWN_NODE}"

  sed -i "s/{{POD_NAME}}/${pod_name}/g" /usr/share/nginx/html/index.html
  sed -i "s/{{NODE_NAME}}/${node_name}/g" /usr/share/nginx/html/index.html

  exec nginx -g "daemon off;"
}

main
