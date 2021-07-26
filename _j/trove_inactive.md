---
title: Inactive package development status stated in trove classifiers
---

Package maintainer claims inactive development status for the given package.

## Issue description

Package maintainers can state development status of Python packages published.
The system detected that the package maintainer stated inactive development
status. Using inactive project might cause troubles with fixing bugs or when
users ask for new feature requests.

## Affected packages:

Justification information lists affected packages.

## Severity

 * WARNING

## Issue fix

Try to find an alternative library that has active community with a similar
functionality.

## Pipeline units

 * [TroveClassifiersWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#thoth.adviser.wraps.TroveClassifiersWrap)

## Recommendation types

The warning produced is not specific to any recommendation type. See [this
document that describes all the recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [Python trove classifier][1]

[1]: https://pypi.org/classifiers/
