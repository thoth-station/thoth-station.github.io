---
title: No Python specific trove classifier matching Python version used
---

Python package version used is not listed in the list of compatible versions by the package maintainer.

## Issue description

Package maintainers can state which Python interpreter versions are compatible
with the given package. The system detected that the package maintainer stated
compatible Python intepreter versions, but the used Python interpreter version
is not listed.

Check package information (e.g. by following link to PyPI) to see compatible
Python interpreter versions according to the package maintainer.

## Affected packages

Justification information lists affected packages.

## Severity

 * WARNING

## Issue fix

If the library causes issues when run on the specific Python interpreter
version, use another library version or update/downgrade Python interpreter.

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
