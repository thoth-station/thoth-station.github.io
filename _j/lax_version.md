---
title: A version range specifier is too lax
---

One or more version range specifiers are too lax.

## Issue description

It is a good practice to specify upper boundary in version range specifier of
requirements. This upper boundary should match the most recent version tested
with the application.

If version range specifier is too lax, it might cause troubles in the future
caused by library version overpinning.

## Affected packages

See the warning message reported.

## Severity

 * WARNING

## Issue fix

Specify upper boundary in version range specifier to avoid library overpinning
issues.

## Pipeline units

 * [VersionCheckBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.VersionCheckBoot)

## Recommendation types

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Resolve Python dependencies with Thoth Dependency Monkey][1]

[1]: https://developers.redhat.com/articles/2021/09/17/resolve-python-dependencies-thoth-dependency-monkey
