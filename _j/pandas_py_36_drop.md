---
title: Pandas in versions >=1.2 dropped Python 3.6 support
---

Resolver filtered out Pandas in versions >=1.2 when running Python 3.6
environment or any older Python version.

## Issue description

Package Pandas dropped Python 3.6 support starting versions >1.2.0. You should
use an older release.

## Affected packages

 * ``pandas>=1.2.0``

## Severity

 * WARNING

## Issue fix

Resolver automatically tries to come up with an older Pandas release for the
Python 3.6 environment used (or an older Python version). If the resolution
process does not come up with any solution, resolver fails - see the resolution
log for more info.

## Pipeline units

 * [PandasPy36Drop](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.PandasPy36Drop)

## Recommendation types

This warning can be produced when using the following recommendation types:

 * performance
 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Issues associated

 * [pandas-dev/pandas#35214][1]

## Related

 * [``pandas`` package][2]
 * [Pandas documentation][3]
 * [pandas-dev/pandas#35214][1]

[1]: https://github.com/pandas-dev/pandas/pull/35214
[2]: https://pypi.org/project/pandas
[3]: https://pandas.pydata.org/docs/
