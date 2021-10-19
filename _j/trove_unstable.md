---
title: Development status stated in trove classifiers might not be suitable to be used given the recommendation type used
---

Package maintainer stated development trove classifier that might indicate
unsuitable use.

## Issue description

Package maintainers can state development status of packages published. The
system detected that the package maintainer stated trove classifier that might
indicate unsuitable use of a Python package.

Check package information (e.g. by following link to PyPI) to see more
information about the given package.

## Affected packages

Justification information lists affected packages.

## Severity

 * WARNING

## Issue fix

Consider using different package or package version.

## Pipeline units

 * [TroveClassifiersWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#thoth.adviser.wraps.TroveClassifiersWrap)

## Recommendation types

The warning produced is not specific to any recommendation type. See [this
document that describes all the recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [Python trove classifier][1]
 * [YouTube video demonstrating use][2]

[1]: https://pypi.org/classifiers/
[2]: https://www.youtube.com/watch?v=R_oYDppz0S4
