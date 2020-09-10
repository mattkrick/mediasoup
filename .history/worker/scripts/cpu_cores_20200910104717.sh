#!/usr/bin/env sh

set -e

OS="$(uname -s)"
NUM_CORES=

case "${OS}" in
	Linux*)   NUM_CORES=$(nproc);;
	Darwin*)  NUM_CORES=$(sysctl -n hw.ncpu);;
	*)        NUM_CORES=1;;
esac
<<<<<<< HEAD
if [ -n "${MEDIASOUP_MAX_CORES}" ]; then
	NUM_CORES=$((MEDIASOUP_MAX_CORES>NUM_CORES ? NUM_CORES : MEDIASOUP_MAX_CORES))
fi
||||||| f7bcc87d

=======
if [ -n "${MAX_CORES}" ]; then
	NUM_CORES=${MAX_CORES}
fi
>>>>>>> 674e240bd84a916ccd0ea78173217a297a97bf40
echo ${NUM_CORES}
