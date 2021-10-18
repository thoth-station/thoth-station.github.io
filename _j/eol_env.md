---
title: Runtime environment used is no longer supported, it is recommended to switch to another runtime environment
---

The given runtime environment is no longer supported by Thoth.

## Issue description

This warning is produced when asking for an advise for a runtime environment
that is about to be decommissioned. The recommendation engine can still give
recommendations on the requested stack, but it is recommended to switch to
another runtime environment for up to date recommendations.

Follow [release notes][0] for updates and changes in runtime environments.

## Affected packages

The warning produced is not related to a specific package.

## Severity

 * WARNING

## Issue fix

Please switch to a supported runtime environment. See [release notes for more
info][0].

## Pipeline units

 * [SolversConfiguredBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.SolversConfiguredBoot)

## Recommendation types

The warning produced is not specific to any recommendation type. See [this
document that describes all the recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth releases][0]

[0]: https://github.com/thoth-station/thoth-application/releases
