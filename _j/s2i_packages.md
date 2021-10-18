---
title: Removing any possible versions as the given package that is already present in the base image
---

One or multiple versions of Python packages were removed as they are already
shipped inside containerized Python environment.

## Issue description

The runtime environment used is shipped with Python packages that are
pre-installed and available for use. The recommendation engine makes sure these
packages are taken into account during the resolution process and are not
overwritten when dependencies are installed.

An example can be TensorFlow shipped inside Jupyter Notebook images. If users
run such a Jupyter Notebook, the TensorFlow that is shipped with Jupyter
Notebook (runtime environment used) is used.

## Affected packages

See the resolution log for more information on affected packages.

## Severity

 * WARNING

## Pipeline units

 * [ThothS2IPackagesSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.ThothS2IPackagesSieve)

## Recommendation types

See [this document that describes all the recommendation types
](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth S2I base container images][1]

[1]: https://github.com/thoth-station/s2i-thoth/
