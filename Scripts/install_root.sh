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

    ROOT_TARBALL="${ROOT_TAG}.Linux-ubuntu22-x86_64-gcc11.4.tar.gz"

    cd /usr/local

    # Install files and cleanup
    URL="https://root.cern/download/$ROOT_TARBALL"
    echo "getting this file: $URL"
    wget -nv --no-check-certificate $URL #https://root.cern/download/$ROOT_TARBALL
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
    wget -nv --no-check-certificate https://root.cern/download/$ROOT_TARBALL
    tar -xzf $ROOT_TARBALL
    # Tags have the format root_vX.Y.Z, and the directories that are in the tarballs have the format root-X.Y.Z
    ROOT_DIR=`echo "$ROOT_TAG" | sed -r 's/[_v]+/-/g'`
    mkdir ${ROOT_DIR}/root_build
    cd ${ROOT_DIR}/root_build
    cmake -DCMAKE_INSTALL_PREFIX=$ROOT_INSTALL ..
    cmake --build . -- install -j$NARG

    # Cleanup
    cd /
    rm $ROOT_TARBALL
    rm -r $ROOT_SOURCE
fi

echo "Target arch: $TARGETARCH"
