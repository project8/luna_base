#! /bin/bash

#
# This script installs the main packages for dev and prod builds.
# It expects one argument, either `dev` or `prod` (backticks not included).
# Any other argument, or no argument, will exit with an error.
# Dev build usage:
#   > ./install_packages.sh dev
#
# Prod build usage:
#   > ./install_packages.sh prod
#
# Current dependencies installed
#   - build-essential: anything to be built; standard libraries
#   - dpkg-dev: ???
#   - cmake: anything to be built
#   - clang: anything to be built with clang
#   - git: any p8 projects to be built
#   - openssl: ROOT?
#   - python3(-dev): all Python packages
#   - pipenv: all Python packages to be installed
#   - vim: convenience utility
#   - wget: downloading files (e.g. tarballs to install)
#   - libgsl(-dev): ROOT, Kassiopeia
#   - libopenblas(-dev): ???
#   - liblapack(-dev): ???
#   - libfreetype(-dev): ???
#   - libx11(-dev): ROOT
#   - libxpm(-dev): ROOT
#   - libxft(-dev): ROOT
#   - libpng(-dev): ROOT
#   - libjpeg(-dev): ROOT
#   - libfftw3(-dev): ROOT, Katydid, Locust
#   - libboost-date-time: Katydid, Locust
#   - libboost-filesystem: Katydid, Locust
#   - libboost-program-options: Katydid
#   - libboost-system: Katydid, Locust
#   - libboost-thread: Katydid, Locust
#   - libeigen3-dev: Katydid
#   - libhdf5(-dev)(-cpp): Anything using Monarch -- Dev is needed to install h5py
#   - libmatio(-dev): Katydid
#   - libvtk9(-dev): Kassiopeia
#   - libyaml-cpp(-dev): Katydid, Locust
#   - rapidjson-dev: Katydid, Locust
#   - pybind11-dev: Katydid (build only)
#

apt-get update

if [[ "$1" = "dev" ]]; then
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        build-essential \
        dpkg-dev \
        cmake \
        clang \
        openssl \
        vim \
        libgsl-dev \
        libopenblas-dev \
        liblapack-dev \
        libfreetype-dev \
        libx11-dev \
        libxpm-dev \
        libxft-dev \
        libxext-dev \
        libpng-dev \
        libjpeg-dev \
        libfftw3-dev \
        libboost-all-dev \
        libeigen3-dev \
        libhdf5-dev \
        libmatio-dev \
        libvtk9-dev \
        libyaml-cpp-dev \
        rapidjson-dev \
        pybind11-dev
elif [[ "$1" = "prod" ]]; then
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        wget \
        libgsl25 \
        libx11-6 \
        libxpm4 \
        libxft2 \
        libxext6 \
        libpng16-16 \
        libjpeg62-turbo \
        libssl1.1 \
        libfftw3-double3 \
        libboost-date-time1.74.0 \
        libboost-filesystem1.74.0 \
        libboost-program-options1.74.0 \
        libboost-system1.74.0 \
        libboost-thread1.74.0 \
        libeigen3-dev \
        libhdf5-cpp-103 \
        libhdf5-dev \
        libmatio11 \
        libvtk9 \
        libyaml-cpp0.6 \
        rapidjson-dev
else
    exit 1
fi

apt-get clean
rm -rf /var/lib/apt/lists/*
