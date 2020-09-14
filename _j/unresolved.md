---
title: Resolver failed as it was unable to resolve direct dependencies
---

The resolution was terminated as direct dependencies could not be resolved.

## Issue description

To resolve a software stack, Thoth aggregates information packages published on
Python package indexes. This message happens when Thoth has not solved a direct
dependency a user's stack requires. As the direct dependency was not analyzed
yet, Thoth cannot resolve the dependency graph to deliver a pinned down
software stack.

On the backend side, this prioritizes analysis of the missing package so that
users can receive recommendations as soon as possible.

## Affected packages:

This message is not specific to any concrete package.

## Severity

 * ERROR

## Issue fix

Get back to Thoth in a while. Thoth backend analyzes the software to provide
recommendations.

Note this can happen also when the package requested is not available on PyPI
(e.g. typo), or no longer available as it was deleted by package maintainers.

## Pipeline units

This message is not specific to any pipeline unit.

## Recommendation types

This message is not specific to any recommendation type.

## Related

 * [Thoth solver][1]
 * [PyPI][2]

[1]: https://github.com/thoth-station/solver
[2]: https://pypi.org/
