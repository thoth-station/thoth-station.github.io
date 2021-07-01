---
title: A package requires RPM package present
---

A package requires a native dependency (RPM) present in the runtime
environment.

## Issue description

A Python package requires a native dependency in a form of a RPM being present in
the runtime environment. However, the required RPM package is not present. That
means the Python package will not work in the runtime environment.

## Affected packages:

See resolution log for information about affected package.

## Severity

 * WARNING

## Issue fix

Resolver will automatically try to find another resolution path for which
required RPM packages are available in the runtime environment.

You can also switch to another runtime environment that provides the given RPM
package.

## Recommendation types

See [this document that describes all the recommendation types
](http://thoth-station.ninja/recommendation-types).

## Related

 * [Prescriptions specific to RPM packages][1]

[1]: https://thoth-station.ninja/docs/developers/adviser/prescription.html#should-include-runtime-environments-rpm-packages
