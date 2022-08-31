# Luna Base

This repo includes the Dockerfiles for the base images of the Project 8 analysis & simulations software stack.

The Dev image includes packages that are needed to build the Project 8 software (usually ending in `-dev`).  The Prod image includes non-dev packages that are necessary to run Project 8 software.  The Prod image is about a factor of two smaller than the DEv image when built.

These images are based on the `python/bullseye (Debian-based) image.

Dockerfiles for individual software packages can be found in their respective repositories.  They are all based on the `luna_base` image.

## Dependencies

Installed by aptitude for Dev/Prod (and what requires it):
* build-essential / build-essential (many things)
* dpkg-dev / [none] (many things)
* cmake / [none] (any dev work)
* git / [none] (any dev work)
* vim / [none] (any dev work)
* openssl / libssl1.1 (AMQP, ROOT, ...)
* wget / wget [removed after build] (dev work)
* libgsl-dev / libgsl25 (Kassiopeia)
* libopenblas-dev / [none] (Katydid?)
* liblapack-dev / [none] (Katydid?)
* libfreetype-dev / [none] (Katydid?)
* libx11-dev / libx11-6 (ROOT)
* libxpm-dev / libxpm4 (ROOT)
* libxft-dev / libxft2 (ROOT)
* libxext-dev / libext6 (ROOT)
* libpng-dev / libpng16-16 (ROOT)
* libjpeg-dev / libjpeg62-turbo (ROOT)
* libfftw3-dev / libfftw3-double3 (Katydid, Locust, ROOT, ...)
* libboost-all-dev / [none] (many things)
* [none] / libboost-date-time1.74.0 (many things)
* [none] / libboost-filesystem1.74.0 (many things)
* [none] / libboost-program-options1.74.0 (Katydid)
* [none] / libboost-system1.74.0 (many things)
* [none] / libboost-thread1.74.0 (Katydid)
* libeigen3-dev / libeigen3-dev (Katydid)
* libhdf5-dev / libhdf5-cpp-103 (anything Monarch)
* libmatio-dev / libmatio11 (Katydid)
* libvtk6-dev / libvtk6.3 (Kassiopeia, optional)
* libyaml-cpp-dev / libyaml-cpp0.6 (many things)
* rapidjson-dev / rapidjson-dev (many things)

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
* uproot4>=4.0.0
* lz4
* pbr==5.5.1
* six
* colorlog
* h5py
* matplotlib
* scipy

Note that `pystan` caused issues for the build and was removed.  This will need to be revisited to make the mermithid install work.

Installed independently and why:
* ROOT (binary tarball): version available in aptitude is too old
