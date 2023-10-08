#! /bin/bash
set -e  # exit on error

#
# This script installs the other (non-python, outside of apt) packages.
# Usage:
#   > ./install_other_packages.sh
#
# Current packages here:
#   - ROOT: No longer available in the package manager (after Xenial)
#           Required by Katydid, Locust, Kassiopeia
#

ROOT_TAG=$1
echo "Installing ROOT: $ROOT_TAG"

TARGETARCH=$2
echo "Target arch: $TARGETARCH"

NARG=$3

if [[ "$TARGETARCH" = "amd64" ]]; then
    echo "Installing pre-built binary"

    ROOT_TARBALL="${ROOT_TAG}.Linux-ubuntu22-x86_64-gcc11.3.tar.gz"

    cd /usr/local

    # Install files and cleanup
    wget -nv https://root.cern/download/$ROOT_TARBALL
    tar -xzf $ROOT_TARBALL

    # Cleanup
    rm $ROOT_TARBALL
else
    echo "Installing from source"

    ROOT_TARBALL="${ROOT_TAG}.source.tar.gz"
    ROOT_SOURCE=/tmp_source
    ROOT_INSTALL=/usr/local/root

    mkdir -p $ROOT_INSTALL

    mkdir $ROOT_SOURCE
    cd $ROOT_SOURCE

    # Build
    wget -nv https://root.cern/download/$ROOT_TARBALL
    tar -xzf $ROOT_TARBALL
    cd $ROOT_TAG
    mkdir root_build
    cd root_build
    cmake -DCMAKE_INSTALL_PREFIX=$ROOT_INSTALL ..
    cmake --build . -- install -j$NARG

    # Cleanup
    cd /
    rm $ROOT_TARBALL
    rm -r $ROOT_SOURCE
fi

echo "Target arch: $TARGETARCH"
