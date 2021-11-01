---
title: Recommendations computed based on Thoth community
---

The recommendation engine uses aggregated information about environments and
software stacks being used by the community.

## Issue description

As users use Thoth's resolver to create software stacks for their runtime
environment, Thoth aggregates data about the runtime environment and software
stacks. A certain library or library version being popular for a runtime
environment is assumed to indicate stability or reliability. This expectation
is then passed on to other users.

## Affected packages

See additional information in the resolver's justifications. Some
recommendations are specific to packages, some might be specific to the runtime
environment used.

## Severity

 * INFO

## Recommendation types

All the recommendation types provide this information:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth's prescriptions refresh][1]
 * [Thoth's homepage][2]

[1]: https://thoth-station.ninja
[2]: https://github.com/thoth-station/prescriptions-refresh-job
