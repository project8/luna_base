# Luna

This repo includes the Dockerfiles for the containerization of the Project 8 analysis & simulations software stack. Specifically, it includes:
* The dependencies of the software stack
* The `p8compute` container, which brings together the entire stack and is used for official analysis and simulations jobs

Dockerfiles for individual software packages can be found in their respective repositories.  In principle those individual containers can be used independent of the `p8compute` container.

## Dependencies

Installed by `yum` (and what requires it):
* devtoolset-7 (`devtoolset-7-gcc-c++`) (Lots of things)
* `rh-python36-python-devel` (ROOT, Mermithid, etc)
* `zlib-devel` (git)
* `perl-devel` (git)
* `gettext-devel` (git)
* `libX11-devel` (ROOT)
* `libXpm-devel` (ROOT)
* `libXft-devel` (ROOT)
* `libXext-devel` (ROOT)
* `wget` (install)

Installed from source
* CMake
* Git
* HDF5
* FFTW3
* Matio
* GSL
* ROOT

## P8Compute

Packages currently included:
* Katydid
* Locust_mc

