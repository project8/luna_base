Usage Guide
===========

These instructions assume that you have `installed <https://docs.docker.com/install/>`_ Docker on your system.

Running P8Compute
-----------------

The ``p8compute`` container is available on `Docker Hub <https://hub.docker.com/r/project8/p8compute/>`_.  To specify versions, you can use a docker tag, either ``latest`` or a particular version (e.g. ``v0.4.0``).

You can run the image interactively from the command line::

    host> docker run -it project8/p8compute:latest /bin/bash

You then need to setup the appropriate environment using the setup script::

    p8compute> source $P8COMPUTE_BUILD_PREFIX/setup.sh

All of the software packages should now be available in your path, so you can start Katydid, for example::

    p8compute> Katydid -c my_config.yaml

The Setup Script
----------------

The ``p8compute`` install has a setup script that prepares the environment and sets some convenient symbolic directory links.

There are environment variables that point to each install directory:

* ``$P8COMPUTE_BUILD_PREFIX=/usr/local/p8/compute/[version]``
* ``$KATYDID_BUILD_PREFIX=/usr/local/p8/katydid/[version]``
* ``$LOCUST_BUILD_PREFIX=/usr/local/p8/locust/[version]``
* etc.

And there are environment variables for the current version (usually a git repo tag):

* ``$P8COMPUTE_TAG=[version]``
* ``$KATYDID_TAG=[version]``
* ``$LOCUST_TAG=[version]``
* etc.

Directory links include a link called ``current`` that points to each package's "current" version.  So, for Katydid for instance, you'll have the link::

    /usr/local/p8/katydid/current --> /usr/local/p8/katydid/[version]

Changing Versions
~~~~~~~~~~~~~~~~~

If you want to change to a new ``p8compute`` version, just source that version's setup script::

    p8compute> source /usr/local/p8/compute/[version]/setup.sh

If you're using the ``p8compute`` container, it's recommended that you change versions like this instead of an individual package's version, to avoid version shear.  If you're using a package's own Docker container, you can of course use that package's setup script, e.g.::

    katydid> source /usr/local/p8/katydid/[version]/setup.sh

Within DIRAC
------------

There are currently no special instructions for using the container within DIRAC.

The CVMFS-like directory structure is built into the p8compute container for backwards compatibility with existing DIRAC transformations.
