ARG img_repo=ubuntu
ARG img_tag=22.04

FROM ${img_repo}:${img_tag} as base_image

ARG common_tag=beta
ARG common_subdir=common
ARG scripts_dir=/tmp_build_scripts

ARG cc_val=gcc
ARG cxx_val=g++

# Set bash as the default shell
SHELL ["/bin/bash", "-c"]

ENV CMAKE_LIBRARY_PATH=/usr/lib64
ENV RapidJSON_DIR=/usr/lib64/cmake

# P8 and COMMON paths
ENV P8_ROOT=/usr/local/p8
ENV COMMON_TAG=${common_tag}
ENV COMMON_PREFIX=${P8_ROOT}/${common_subdir}/$COMMON_TAG

ENV CC=${cc_val}
ENV CXX=${cxx_val}

# Copy all build scripts
COPY Scripts ${scripts_dir}

# Install as many dependencies as possible using apt
RUN ${scripts_dir}/install_packages.sh dev &&\
    ${scripts_dir}/install_python_packages.sh &&\
    ${scripts_dir}/install_other_packages.sh &&\
    ${scripts_dir}/create_common_setup.sh &&\
    rm -rf ${scripts_dir} &&\
    /bin/true
