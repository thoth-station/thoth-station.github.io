---
title: RHEL major releases guarantee ABI compatibility across minor releases
---

The recommendation engine considers only major releases of RHEL or UBI software
environments. Any minor release identifier will be discarded.

## Issue description

RHEL/UBI releases guarantee ABI compatibility of native dependencies shipped.
Information about any minor releases will not be used in recommendations.

## Affected packages:

This message is not specific to any package.

## Severity

 * WARNING

## Issue fix

Adjust ``.thoth.yaml`` configuration file so that it does not state minor
releases for UBI and RHEL software environments.

## Pipeline units

 * [RHELVersionBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.RHELVersionBoot)

## Recommendation types

This message can be produced for all the recommendation types available:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos documentation][1]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
