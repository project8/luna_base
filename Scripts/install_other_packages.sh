#! /bin/bash

#
# This script installs the other (non-python, outside of apt) packages.
# Usage:
#   > ./install_other_packages.sh
#
# Current packages here:
#   - ROOT: No longer available in the package manager (after Xenial)
#           Required by Katydid, Locust, Kassiopeia
#

# List files to be downloaded/used
ROOT_TARBALL="root_v6.26.10.Linux-ubuntu22-x86_64-gcc11.3.tar.gz"

cd /usr/local

# Install files and cleanup
wget -nv https://root.cern/download/$ROOT_TARBALL
tar -xzf $ROOT_TARBALL
rm $ROOT_TARBALL
