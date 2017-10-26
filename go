#!/bin/bash

set -eu

function task_usage {
  echo "Usage: $0 build | test"
  exit 1
}

arg=${1:-}
shift || true
case "$arg" in
  *) task_usage ;;
esac
