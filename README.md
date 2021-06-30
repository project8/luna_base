# Luna Base

This repo includes the Dockerfile for the base image of the Project 8 analysis & simulations software stack.

Dockerfiles for individual software packages can be found in their respective repositories.  They are all based on the `p8compute_dependencies` image.

## Dependencies

Installed by aptitude (and what requires it):
* build-essential (many things)
* dpkg-dev (many things)
* cmake (any dev work)
* git (any dev work)
* openssl (AMQP, ROOT, ...)
* python3-dev (Mermithid, ...)
* pipenv (anything Python)
* wget (dev work)
* libgsl-dev (Kassiopeia)
* libopenblas-dev (Katydid)
* liblapack-dev (Katydid)
* libfreetype-dev (Katydid)
* libx11-dev (ROOT)
* libxpm-dev (ROOT)
* libxft-dev (ROOT)
* libxext-dev (ROOT)
* libpng-dev (ROOT)
* libjpeg-dev (ROOT)
* libfftw3-dev (Katydid, Locust, ROOT, ...)
* libboost-all-dev (many things)
* libeigen3-dev (Katydid)
* libhdf5-dev (anything Monarch)
* libmatio-dev (Katydid)
* librabbitmq-dev (Psyllid, Dripline)
* libyaml-cpp-dev (many things)
* rapidjson-dev (many things)
* pybind11-dev (Dripline)

Installed by pip:
* iminuit
* numericalunits
* PyYAML==5.4.1
* pyparsing==2.4.7
* dnspython==1.12.0
* cycler==0.10.0
* python-dateutil==2.8.1
* numpy>=1.14
* Cython>=0.22
* pystan==2.17.1.0
* uproot4>=4.0.0
* lz4
* pbr==5.5.1
* six
* colorlog
* h5py
* matplotlib
* scipy==1.6.1

Installed independently and why:
* ROOT (binary tarball): version available in aptitude is too old
