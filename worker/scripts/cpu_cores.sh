#!/usr/bin/env sh

set -e

OS="$(uname -s)"
NUM_CORES=

case "${OS}" in
	Linux*)   NUM_CORES=$(nproc);;
	Darwin*)  NUM_CORES=$(sysctl -n hw.ncpu);;
	*)        NUM_CORES=1;;
esac
if [ -n "${MAX_CORES}" ]; then
	NUM_CORES=${MAX_CORES}
fi
echo ${NUM_CORES}
