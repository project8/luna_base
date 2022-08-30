#! /bin/bash

#
# This script installs the Python packages.
# Usage:
#   > ./install_python_packages.sh
#
# Current dependencies installed:
#   - iminuit: 
#   - numericalunits: 
#   - PyYAML: 
#   - pyparsing: 
#   - dnspython: 
#   - cycler: 
#   - python-dateutil: 
#   - numpy: 
#   - Cython: 
#   - pystan: 
#   - uproot: 
#   - lz4: 
#   - pbr: 
#   - six: 
#   - colorlog: 
#   - h5py: 
#   - matplotlib: 
#   - scipy: 
#

pip3 install --upgrade pip

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
    'uproot4>=4.0.0' \
    'lz4' \
    'pbr==5.5.1' \
    'six' \
    'colorlog' \
    'h5py' \
    'matplotlib' \
    'scipy'

#    'pystan==2.19.1.1' \
