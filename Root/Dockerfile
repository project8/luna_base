ARG img_repo=ubuntu
ARG img_tag=22.04

FROM ${img_repo}:${img_tag} as base_image

ARG TARGETARCH
ARG root_tag
ARG narg=2

ARG cc_val=gcc
ARG cxx_val=g++
ENV CC=${cc_val}
ENV CXX=${cxx_val}



# Set bash as the default shell
SHELL ["/bin/bash", "-c"]

ENV CMAKE_LIBRARY_PATH=/usr/lib64

# Copy all build scripts
COPY Scripts ${scripts_dir}

# Install as many dependencies as possible using apt
RUN ${scripts_dir}/install_packages.sh dev root &&\
#    ${scripts_dir}/install_root.sh &&\
#    rm -rf ${scripts_dir} &&\
    /bin/true

RUN ${scripts_dir}/install_root.sh $root_tag $TARGETARCH $narg &&\
    rm -rf ${scripts_dir} &&\
    /bin/true

