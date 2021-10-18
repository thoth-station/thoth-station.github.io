---
title: A package was removed due to missing ABI symbols in environment
---

The given package was removed as the runtime environment does not provide ABI
symbols needed.

## Issue description

The container image analyses run did not detect ABI symbols needed for the
given package. The package reported will not run in the runtime environment.

## Affected packages

This warning message is not specific to any package.

## Severity

 * WARNING

## Issue fix

The resolver logic will try to come up with an alternative which ABI symbols
are present in the desired runtime environment.

If the resolution process does not find any suitable alternative, try to use a
different runtime environment and adjust ``.thoth.yaml`` configuration
accordingly.

## Pipeline units

 * [AbiCompatibilitySieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.AbiCompatibilitySieve)

## Recommendation types

This warning message can be produced for any recommendation type:

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
