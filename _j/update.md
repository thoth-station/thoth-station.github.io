---
title: Removing a package as advising on a new release
---

One or multiple package versions were removed to consider only the updated
package in the resolved stack.

## Issue description

This message is shown only if the resolution process was triggered to update
the application stack. An example could be a new TensorFlow release which
triggers the resolution that explicitly keeps the new TensorFlow release in the
resolved stack. This operation is similar to ``pipenv update``.

## Affected packages:

See the resolution log on more information about the package newly released and
packages filtered out based by this sieve.

## Severity

 * WARNING

## Pipeline units

 * [PackageUpdateSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.PackageUpdateSieve)

## Recommendation types

 * latest

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).
