---
title: Environment is not fully specified, pre-computed environment markers will not be taken into account
---

Thoth's ``.thoth.yaml`` configuration does not state all the information
related to the software environment used.

## Issue description

Thoth's configuration file ``.thoth.yaml`` is missing any of the following
values:

 * operating system name
 * operating system version
 * Python version
 * platform

In such cases, the resolver cannot take into account used software environment
and can not remove packages that are not used in the software environment used.
Check [the compatibility section of Thoth's documentation for more info][2].

See [Thamos documentation for more info][1].

## Affected packages:

This message is not specific to any package.

## Severity

 * WARNING

## Issue fix

Add missing configuration options to ``.thoth.yaml`` configuration file. See
[Thamos documentation for more info][1].

## Pipeline units

This warning is not related to any specific pipeline unit.

## Recommendation types

The warning can be produced for any recommendation type:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos][1]
 * [Compatibility with pip/Pipenv resolver][2]
 * [Environment Markers section in PEP-0508][3]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
[2]: https://thoth-station.ninja/docs/developers/adviser/compatibility.html#compatibility-with-pip-pipenv-resolver
[3]: https://www.python.org/dev/peps/pep-0508/#environment-markers
