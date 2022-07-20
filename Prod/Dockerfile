ARG img_repo=ubuntu
ARG img_tag=20.04

ARG common_tag=beta

FROM ${img_repo}:${img_tag} as base_image

# Set bash as the default shell
SHELL ["/bin/bash", "-c"]

# Install as many dependencies as possible using apt
# Then do Python package installation
# Then install ROOT, since ROOT is currently not available in the package manager (latest is in xenial)
# Finally, remove unnecessary programs
RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        python3 \
        pipenv \
        wget \
        libgsl23 \
        libx11-6 \
        libxpm4 \
        libxft2 \
        libxext6 \
        libpng16-16 \
        libjpeg8 \
        libssl1.1 \
        libfftw3-double3 \
        libboost-date-time1.71.0 \
        libboost-filesystem1.71.0 \
        libboost-program-options1.71.0 \
        libboost-system1.71.0 \
        libboost-thread1.71.0 \
        libeigen3-dev \
        libhdf5-cpp-103 \
        libmatio9 \
        libvtk6.3 \
        libyaml-cpp0.6 \
        rapidjson-dev \
        &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    pip3 install --upgrade pip &&\
    pip3 install \
        'iminuit' \
        'numericalunits' \
        'PyYAML==5.4.1' \
        'pyparsing==2.4.7' \
        'dnspython==1.12.0' \
        'cycler==0.10.0' \
        'python-dateutil==2.8.1' \
        'numpy>=1.14' \
        'Cython>=0.22' \
        'pystan==2.19.1.1' \
        'uproot4>=4.0.0' \
        'lz4' \
        'pbr==5.5.1' \
        'six' \
        'colorlog' \
        'h5py' \
        'matplotlib' \
        'scipy==1.6.1' \
        &&\
    ROOT_TARBALL="root_v6.22.06.Linux-ubuntu20-x86_64-gcc9.3.tar.gz" &&\
    cd /usr/local &&\
    wget https://root.cern/download/$ROOT_TARBALL &&\
    tar -xzf $ROOT_TARBALL &&\
    apt-get purge -y \
        wget \
        pipenv \
        &&\
    /bin/true

ENV CMAKE_LIBRARY_PATH=/usr/lib64
ENV RapidJSON_DIR=/usr/lib64/cmake

#ENV COMMON_TAG=v1.0.0
ENV COMMON_TAG=${common_tag}
ENV COMMON_BUILD_PREFIX=/usr/local/p8/common/$COMMON_TAG

# Create the setup.sh script
# Includes a one-time-use-only guard to avoid repeatedly adding to these environment variables.
COPY Scripts/create_common_setup.sh /usr/local/p8/common/create_common_setup.sh
RUN /usr/local/p8/common/create_common_setup.sh
