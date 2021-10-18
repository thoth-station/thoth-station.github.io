---
title: Resolver failed as it was unable to resolve direct dependencies
---

The resolution was terminated as direct dependencies could not be resolved.

## Issue description

To resolve a software stack, Thoth aggregates information packages published on
Python package indexes. This message happens when Thoth has not solved a direct
dependency required by user's stack. As the direct dependency was not analyzed
yet, Thoth cannot resolve the dependency graph to deliver a pinned down
software stack.

## Affected packages

See the resolver log for more information on affected packages.

## Severity

 * ERROR

## Issue fix

Request analyses using the following [GitHub issue template][3].

Note that this can happen also when the requested package is not available on PyPI
(e.g. typo), or no longer available as it was deleted by package maintainers.

## Pipeline units

This message is not specific to any pipeline unit.

## Recommendation types

This message is not specific to any recommendation type.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth solver][1]
 * [PyPI][2]
 * [GitHub request template][3]

[1]: https://github.com/thoth-station/solver
[2]: https://pypi.org/
[3]: https://tinyurl.com/thoth-unresolved
