---
title: No ABI information was found for the given container image
---

The given runtime environment was not analyzed with respect to ABI symbols
present in the containerized environment hence recommendations specific to ABI
symbols cannot be done.

## Issue description

Thoth analyzes container images to give better guidance with respect to ABI
symbols needed for packages installed into it. As the container image was not
analyzed by Thoth container image analysis, the recommendation engine cannot
provide recommendations specific to ABI symbols present in containerized
environments.

## Affected packages

This warning message is not specific to any package.

## Severity

 * WARNING

## Issue fix

Use another containerized runtime environment that is analyzed and available to
give better guidenance and recommendations specific to the containerized
environment.

If the containerized environment used is provided by Thoth team, please [raise
a support issue][2] and let Thoth team know about the containerized environment
required to run the application.

## Pipeline units

 * [AbiCompatibilitySieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.AbiCompatibilitySieve)

## Recommendation types

This warning message can be produced for any recommendation type:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos documentation][1]
 * [thoth-station/support issue tracker][2]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
[2]: https://github.com/thoth-station/support/issues/new/choose
