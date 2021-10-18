---
title: Removing a package due to installation time error in the software environment
---

The given package was removed from the resolution process as it produces errors
during installation in the given environment.

## Issue description

Thoth runs background analyses that make sure recommended packages have high
quality. One of such analyzers is [thoth-solver][2] that besides resolving
dependencies also captures information if the given package is installable into
the environment used.

The fact a package is not installable into the given environment can be caused
by multiple issues. Besides Python 2 and Python 3 incompatibilities in
``setup.py``, issues like missing native dependencies in the environment (e.g.
C toolchain to build native extensions) are also applicable.

## Affected packages

This warning is not tight to any specific package.

## Severity

 * WARNING

## Issue fix

Resolver will try to find another valid resolution path without the given
package.

## Pipeline units

 * [SolvedSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.solved.SolvedSieve)

## Recommendation types

This message can be produced for all the recommendation types.

See [this document that describes recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [SolvedSieve][1]
 * [thoth-solver][2]

[1]: https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.solved.SolvedSieve
[2]: https://github.com/thoth-station/solver
