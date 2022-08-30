ARG img_repo=python
ARG img_tag=bullseye

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
# Then do Python package installation
# Then install other packages not available in apt
# Create the setup.sh script
# Finally, remove unnecessary programs
RUN ${scripts_dir}/install_packages.sh prod &&\
    ${scripts_dir}/install_python_packages.sh &&\
    ${scripts_dir}/install_other_packages.sh &&\
    apt-get purge -y \
        wget \
        &&\
    ${scripts_dir}/create_common_setup.sh &&\
    rm -rf ${scripts_dir} &&\
    /bin/true
