---
title: No version of Python specified
---

The recommendation engine did not find Python version in ``.thoth.yaml`` or in
the ``Pipfile``.

## Issue description

Thoth's recommendation engine uses Python version information to resolve Python
software stacks suitable for the Python interpreter run in the runtime
environment. As there was no Python version information found in
``.thoth.yaml`` configuration file (see the runtime environment configuration
section) the recommendation engine uses the one found in ``Pipfile`` or vice
versa.

It's recommended to state Python version explictly.

## Affected packages

This warning is not specific to any package.

## Severity

 * WARNING

## Issue fix

The recommendation engine logic will use a Python version found in
``.thoth.yaml`` or in ``Pipfile`` and use the one available.

## Pipeline units

 * [PythonVersionBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.PythonVersionBoot)

## Recommendation types

This warning message can be produced for all the recommendation types available:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Pipfile documentation][1]
 * [Thamos documentation][2]

[1]: https://pipenv-fork.readthedocs.io/en/latest/basics.html
[2]: https://thoth-station.ninja/docs/developers/thamos/index.html
