---
title: No observations found for the given operating system running a specific Python version
---

The supplied configuration of the software environment is not known.

## Issue description

Thoth's configuration file ``.thoth.yaml`` states unknown configuration of:

 * operating system name
 * operating system version
 * Python version
 * platform

In such cases, the resolver cannot resolve software stack for the given
environment. To see supported configurations, you can browse the resolution
logs:

```console
thamos log
```

Alternatively, you can check available configurations on Thoth API:

```console
curl -X GET \
  -H  "accept: application/json"
  "https://khemenu.thoth-station.ninja/api/v1/runtime-environment"
```

See [Thamos documentation for more info][1] on how to state configuration
options in ``.thoth.yaml``.

## Affected packages

The error is not specific to any package but rather to the runtime environment
configuration used.

## Severity

 * ERROR

## Issue fix

Check the resolution log for the available configurations (see above) and
adjust your ``.thoth.yaml`` accordingly.

## Pipeline units

 * [SolvedSoftwareEnvironmentBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.SolvedSoftwareEnvironmentBoot)

## Recommendation types

This error can occur for all the recommendation types available:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos][1]
 * [Introduction to Thoth’s adviser principles][2]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
[2]: https://thoth-station.ninja/docs/developers/adviser/introduction.html
