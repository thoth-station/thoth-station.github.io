---
title: The latest stack couldn't be resolved, performing hops across package versions
---

The resolution process does not resolve all the packages to their latest
versions.

## Issue description

The resolver tried to resolve all the packages to their latest versions based
on a predictor that guides the resolution to include the most recent packages in the
software stack (see [principles used during the resolution][1] and [the
predictor abstraction][2]). The resolution process failed to resolve all the
packages to their latest versions, but the resolution continues by using some
older releases of packages in the software stack (most often they will be
resolved very close to the latest release).

The reasons why packages could not be resolved to their latest versions:

* version range specification does not allow the most recent releases to be
  included

* latest versions were not solved yet by Thoth's data ingestion pipeline yet

* the most recent packages do not work in the target runtime environment

## Affected packages:

The warning produced is not related to any specific package.

## Severity

 * WARNING

## Pipeline units

This warning is not relevant to any pipeline unit.

## Recommendation types

 * latest

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Introduction to Thoth’s adviser principles][1]
 * [Predictor in Thoth’s adviser][2]
 * [Predictor approximating "latest" software stacks][3]

[1]: https://thoth-station.ninja/docs/developers/adviser/introduction.html
[2]: https://thoth-station.ninja/docs/developers/adviser/predictor.html
[3]: https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.predictors.html#module-thoth.adviser.predictors.latest
