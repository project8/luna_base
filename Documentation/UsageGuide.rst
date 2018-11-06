Usage Guide
===========

These instructions assume that you have `installed <https://docs.docker.com/install/>`_ Docker on your system.

Running P8Compute
-----------------

The ``p8compute`` container is available on `Docker Hub <https://hub.docker.com/r/project8/p8compute/>`_.  In the current testing phase you need to specify the tag (e.g. ``v0.2.0_test``).

You can run the image interactively from the command line::

    host> docker run -it project8/p8compute:v0.2.0_test /bin/bash

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

These instructions are for setting up the ``p8compute`` image for use in DIRAC, which most users don't need to do.

There's a special setup script that creates the fake ``cvmfs`` directory structure.  It creates the directory ``/cvmfs/p8.hep.pnnl.gov`` and then the symbolic link ``/cvmfs/p8.hep.pnnl.gov/project8 --> /usr/local/p8``::

    p8compute> source /usr/local/p8/compute/[version]/setup_cvmfs.sh

It also sources the normal ``setup.sh``, so you only need to use one script.
