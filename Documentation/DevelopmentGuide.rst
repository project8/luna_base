Development Guide
=================

This guide is intended to help those keeping the Luna repository and the P8Compute* containers up-to-date.

Implementing Updated Dependencies
---------------------------------

The Dependencies Dockerfile has been updated for whatever reason.  
And now you need to update everything else, update dependent dockerfiles, and get new images tagged and pushed.  
It's assumed that Katydid, Locust, and Mermithid all have autobuilds enabled.

1. Create a Release branch of Luna for the new Luna version.
2. Update the SoftwareVersions and ValidationLog documentation files with the new software versions.
3. Update the version number in:
    * `Dependencies/Dockerfile` -- `COMMON_TAG`,
    * `P8Compute/Dockerfile` -- `FROM` and `P8COMPUTE_TAG`,
    * `P8CDirac/Dockerfile` -- `FROM`, and first `sed` line of the `RUN`,
    * `P8CJupyter/Dockerfile` -- `FROM`
4. Build the `P8Compute-dependencies` image.
5. Tag and push the `P8Compute-dependencies` image; include both a version tag and a `latest` tag.
6. Update the Katydid, Locust, and Mermithid Dockerfiles to use the new `P8Compute-dependencies` tag.
7. Release new (typically revision) versions of Katydid, Locust, and Mermithid.  Autobuilds should start on Docker Hub.
8. Update the versions of Katydid, Locust, and Mermithid used in `P8Compute/Dockerfile` (`ARG` and `ENV` lines)
9. Wait for and verify the Katydid, Locust, and Mermithid autobuilds.
10. Build `P8Compute`, tag with the new version and latest, and push the images.
11. Build `P8Compute-dirac` and `P8Compute-jupyter`, tag, and push the images.
12. Make sure the Katydid, Locust, and Mermithid versions listed in SoftwareVersions and ValidationLog are correct since the new releases.
13. Release the new version of Luna.
