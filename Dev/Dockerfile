ARG img_repo=ubuntu
ARG img_tag=20.04

ARG common_tag=beta

FROM ${img_repo}:${img_tag} as base_image

# Set bash as the default shell
SHELL ["/bin/bash", "-c"]

ENV CMAKE_LIBRARY_PATH=/usr/lib64
ENV RapidJSON_DIR=/usr/lib64/cmake

# P8 and COMMON paths
ENV P8_ROOT=/usr/local/p8
ENV COMMON_TAG=${common_tag}
ENV COMMON_BUILD_PREFIX=${P8_ROOT}/common/$COMMON_TAG

# Copy all build scripts
ARG scripts_dir=${P8_ROOT}/common/build_scripts
COPY Scripts ${scripts_dir}

# Install as many dependencies as possible using apt
RUN ${scripts_dir}/install_packages.sh dev &&\
    ${scripts_dir}/install_python_packages.sh &&\
    ${scripts_dir}/install_other_packages.sh &&\
    ${scripts_dir}/create_common_setup.sh &&\
    rm -rf ${scripts_dir} &&\
    /bin/true
