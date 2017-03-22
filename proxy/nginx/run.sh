#!/bin/bash
set -e
set -o pipefail

function main {
  local frontend_ip="${FRONTEND_IP:-127.0.0.1}"

  sed -i "s/{{FRONTEND_IP}}/${frontend_ip}/g" /etc/nginx/conf.d/default.conf

  exec nginx -g "daemon off;"
}

main
