---
title: A package was removed based on solver rules
---

One or multiple packages were removed based on Python solver rules configured.

## Issue description

The given package was not considered during the resolution process as a rule
that discards the given package was configured.

## Affected packages

See logs for affected packages.

## Severity

 * WARNING

## Issue fix

Resolver will try to come up with another resolution path without the removed
package, if any.

## Pipeline units

 * [SolverRulesSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.SolverRulesSieve)

## Recommendation types

The message is not specific to any recommendation type. See [this document that
describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Configuring solver rules][1]

[1]: https://thoth-station.ninja/docs/developers/adviser/deployment.html#configuring-solver-rules
