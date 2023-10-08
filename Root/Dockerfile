ARG img_repo=ubuntu
ARG img_tag=22.04

FROM ${img_repo}:${img_tag} as base_image

ARG root_tag
ENV ROOT_TAG=$root_tag

ARG cc_val=gcc
ARG cxx_val=g++

ARG narg=2

# Set bash as the default shell
SHELL ["/bin/bash", "-c"]

ENV CMAKE_LIBRARY_PATH=/usr/lib64

ENV CC=${cc_val}
ENV CXX=${cxx_val}

# Copy all build scripts
COPY Scripts ${scripts_dir}

ENV TARGETARCH=$TARGETARCH

# Install as many dependencies as possible using apt
RUN ${scripts_dir}/install_packages.sh dev root &&\
#    ${scripts_dir}/install_root.sh &&\
#    rm -rf ${scripts_dir} &&\
    /bin/true

RUN ${scripts_dir}/install_root.sh $ROOT_TAG $narg &&\
    rm -rf ${scripts_dir} &&\
    /bin/true

