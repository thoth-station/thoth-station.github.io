---
title: Software environment supplied is not fully specified
---

One or multiple entries in the runtime environment configuration are missing.

## Issue description

The resolver performs resolution that is specific to runtime environment used.
If one of the mandatory configuration entries is missing, resolver cannot give
recommendations on software packages. The resolution of Python packages can
vary based on runtime environment used.

## Affected packages

This error message is not specific to pacakges used.

## Severity

 * ERROR

## Issue fix

Make sure the runtime environment configuration stated in ``.thoth.yaml`` has
the following mandatory entries:

 * operating system name
 * operating system version
 * Python interpreter version

You can also use autodiscovery offered by [Thamos CLI][1] which will
automatically detect configuration file entries. To do so, run ``thamos
config`` in the project root file which has no ``.thoth.yaml`` configuration
file set up yet. Follow [Thamos CLI documentation][1] for more info.

## Pipeline units

 * [FullySpecifiedEnvironment](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.FullySpecifiedEnvironment)

## Recommendation types

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes all the recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos CLI documentation][1]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
