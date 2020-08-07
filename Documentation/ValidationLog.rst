Validation Log
==============

Guidelines
----------

* All new features incorporated into a tagged release should have their validation documented.
  * Document the new feature.
  * Perform tests to validate the new feature.
  * If the feature is slated for incorporation into an official analysis, perform tests to show that the overall analysis works and benefits from this feature.
  * Indicate in this log where to find documentation of the new feature.
  * Indicate in this log what tests were performed, and where to find a writeup of the results.
* Fixes to existing features should also be validated.
  * Perform tests to show that the fix solves the problem that had been indicated.
  * Perform tests to shwo that the fix does not cause other problems.
  * Indicate in this log what tests were performed and how you know the problem was fixed.
  
Template
--------

Version: 
~~~~~~~~

Release Date: 
'''''''''''''

New Features:
'''''''''''''

* Feature 1
    * Details
* Feature 2
    * Details
  
Fixes:
''''''

* Fix 1
    * Details
* Fix 2
    * Details
  
Log
---

Version: 0.10.0
~~~~~~~~~~~~~~~

Release Date: August 6, 2020
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Locust version (with Kassiopeia enabled): v2.0.0


Version: 0.9.9
~~~~~~~~~~~~~~

Release Date: June 8, 2020
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Mermithid version: v1.2.2


Version: 0.9.8
~~~~~~~~~~~~~~

Release Date: June 5, 2020
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Mermithid version: v1.2.1


Version: 0.9.7
~~~~~~~~~~~~~~

Release Date: June 4, 2020
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Mermithid version: v1.2.0


Version: 0.9.6
~~~~~~~~~~~~~~

Release Date: April 7, 2020
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Locust version, with Kassiopeia disabled: v1.16.0


Version: 0.9.5
~~~~~~~~~~~~~~

Release Date: January 31, 2020
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Locust version, with Kassiopeia disabled: v1.15.9


Version: 0.9.4
~~~~~~~~~~~~~~

Release Date: November 12, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Katydid version
* New Locust version, with Kassiopeia disabled: v1.15.6


Version: 0.9.3
~~~~~~~~~~~~~~

Release Date: October 29, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Locust version, with Kassiopeia disabled: v1.15.4


Version: 0.9.2
~~~~~~~~~~~~~~

Release Date: October 25, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Locust version, with Kassiopeia disabled: v1.15.2


Version: 0.9.1
~~~~~~~~~~~~~~

Release Date: September 9, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Locust version, with Kassiopeia disabled: v1.14.3


Version: 0.9.0
~~~~~~~~~~~~~~

Release Date: August 27, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* Added scipy to the dependencies image
* New Katydid version: v2.17.1
* New Locust version, with Kassiopeia disabled: v1.14.2
* New Mermithid version: v1.1.11
* New Psyllid version: v2.12.2


Version: 0.8.0
~~~~~~~~~~~~~~

Release Date: August 9, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Mermithid version: v1.1.10
* New Locust version, with Kassiopeia disabled: v1.13.3


Version: 0.7.0
~~~~~~~~~~~~~~

Release Date: July 30, 2019
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Mermithid version: v1.1.9
* New Katydid version: 2.17.0
* Psyllid added.  Version: 1.12.1
* Updated dependencies (see Software Versions)


Version: 0.5.0
~~~~~~~~~~~~~~

Release Date: June 17, 2019
'''''''''''''''''''''''''''''''

Note that while this was released in June, work was completed in April, 2019.

New Features:
'''''''''''''

* New Locust version: v1.11.0
* New Mermithid version: v1.1.8
* New Katydid version: 2.15.3
* Update to pystan v2.18.1.0


Version: 0.4.0
~~~~~~~~~~~~~~

Release Date: December 21, 2018
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* New Mermithid version: v1.1.5
* New Katydid version: 2.15.2
* New Locust version: 1.9.2
* Added setting of permissions


Version: 0.3.0
~~~~~~~~~~~~~~

Release Date: December 6, 2018
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* Added Mermithid v1.1.4
* New Katydid version: 2.15.1
* New Locust version: 1.8.3

Fixes:
'''''''''''''

* Fix the setting of the environment in the common section

Version: 0.2.1
~~~~~~~~~~~~~~

Release Date: November 30, 2018
'''''''''''''''''''''''''''''''

Fixes:
'''''''''''''

* Source the this_katydid.sh script in the Jupyter Dockerfile


Version: 0.2.0
~~~~~~~~~~~~~~

Release Date: November 30, 2018
'''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* Changed the directory structure to ``/usr/local/p8/[package]/[version]``
* Added documentation
* Locust v1.8.2
* Katydid v2.15.0
* Boost 1.68.0
* New Dockerfile: p8compute-jupyter


Version: 0.1.0
~~~~~~~~~~~~~~

Release Date: November 5, 2018
''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* Added P8compute Dockerfile with Katydid and Locust


Version: 0.0.1
~~~~~~~~~~~~~~

Release Date: November 5, 2018
''''''''''''''''''''''''''''''

New Features:
'''''''''''''

* Initial version of the Dependencies Dockerfile
    * Includes gcc, Python, CMake, Git, HDF5, FFTW3, Matio, Boost, GSL, and ROOT
    