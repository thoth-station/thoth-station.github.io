---
title: No platform provided in the configuration
---

No platform was found in the ``.thoth.yaml`` configuration file.

## Issue description

It's recommended to specify a platform. The recommendation engine will provide
recommendations for the platform specified.

**WARNING:** If no platform is provided, the recommendation engine defaults to
``linux-x86_64``.

## Affected packages:

This message is not specific to any package.

## Severity

 * WARNING

## Issue fix

Add a platform configuration entry to your ``.thoth.yaml`` configuration file.
See [Thamos documentation for more info][1].

## Pipeline units

 * [PlatformBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.PlatformBoot)

## Recommendation types

This message can be produced for all the recommendation types available:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos documentation][1]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
